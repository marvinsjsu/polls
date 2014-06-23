# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  questions  :text
#  created_at :datetime
#  updated_at :datetime
#  poll_id    :integer
#


class Question < ActiveRecord::Base
  validates(:body, presence: true)
  validates(:poll_id, presence: true)

  has_many(
    :responses,
    :class_name => 'Response',
    :foreign_key => :question_id,
    :primary_key => :id
  )

  belongs_to(
    :poll,
    :class_name => 'Poll',
    :foreign_key => :poll_id,
    :primary_key => :id
  )

end
