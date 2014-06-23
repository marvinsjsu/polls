# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  question_id      :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime
#  updated_at       :datetime
#

class Response < ActiveRecord::Base
  validates(:user_id, presence: true)
  validates(:answer_choice_id, presence: true)
  validate :respondent_has_not_already_answered_question

  belongs_to(
    :respondent,
    :class_name => 'User',
    :foreign_key => :user_id,
    :primary_key => :id
  )

  belongs_to(
    :question,
    :class_name => 'Question',
    :foreign_key => :question_id,
    :primary_key => :id
  )

  belongs_to(
    :answer_choice,
    :class_name => 'AnswerChoice',
    :foreign_key => :answer_choice_id,
    :primary_key => :id
  )

  private

  def respondent_has_not_already_answered_question

  end
end


