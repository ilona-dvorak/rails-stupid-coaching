class QuestionsController < ApplicationController
 def ask; end

  def answer
     @question = params[:question]
     @question = '' if @question.nil?
     @answer = "I don't care, get dressed and go to work!"
     @answer = 'Silly question, get dressed and go to work!' if @question.include?('?')
     @answer = "Great!" if @question.downcase == "I am going to work"
    end
end
