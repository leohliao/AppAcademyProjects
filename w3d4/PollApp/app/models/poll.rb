# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :author_id, presence: true, uniqueness: true

  belongs_to :author, { #in Belongs_to looks to foreign key for id then connects taht foreign key to the called upon class_name ID.
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
  }

  has_many :questions, {
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Question
  }





end
