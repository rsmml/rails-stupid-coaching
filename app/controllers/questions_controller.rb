class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    @answer = coach_answer(@question) if @question
  end

  def coach_answer(your_message)
    if your_message.downcase == "i'm going to work right now!"
      'Good'
    elsif your_message.include? '?'
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
