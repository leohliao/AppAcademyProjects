class ShortenedUrl < ActiveRecord::Base
  validates :short_url, presence: true, uniqueness: true
  validates :long_url, presence: true, uniqueness: true
  validates :user_id, presence: true

  belongs_to :submitter, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'
  }

  has_many :visits, {
    primary_key: :id,
    foreign_key: :url_id,
    class_name: 'Visit'
  }

  has_many :visitors,
    Proc.new { distinct }, {
    source: :visitor,
    through: :visits
  }

  def self.random_code
    short_url = SecureRandom.urlsafe_base64
    while exists?(short_url: short_url)
      short_url = SecureRandom.urlsafe_base64
    end
    short_url
  end

  def self.create_shortened_url(user, url)
    entry = self.create!({
      long_url: url,
      short_url: ShortenedUrl.random_code,
      user_id: user.id
    })

    entry
  end

  def num_clicks
    self.visits.count
  end

  def num_uniques
    self.visitors.count
  end

  def num_recent_uniques
    self.visitors.where({ created_at: (Time.now - 1.day)..Time.now}).count
  end
end
