class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: {
    message: "Custom your email is invalid error"
  }

  has_many :submitted_urls, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'ShortenedUrl'
  }

  has_many :visits, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'Visit'
  }

  has_many :visited_urls, {
    source: :visited_url,
    through: :visits
  }
end
