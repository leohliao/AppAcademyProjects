class Question < ActiveRecord::Base

  validates :txt_question, presence: true, uniqueness: true
  validates :poll_id, presence: true, uniqueness: true

  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice


  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Question #polls?

end
