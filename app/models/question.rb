class Question < ActiveRecord::Base

  def self.validate_answer(answerid, answer)
    current_question = Question.find(answerid)
    current_question.answer.downcase.eql? answer.downcase
  end
end
