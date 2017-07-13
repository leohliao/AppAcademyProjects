class TagTopic < ActiveRecord::Base

  validates :tag_topics, presence: true

  has_many :tagging, {
    primary_key: id
    foreign_key:

  }
  

end
