# app/controllers/questions_controller.rb

class QuestionsController < ApplicationController
  def ask
    # This action is responsible for displaying the form
  end

  def answer
    # Read the question from params
    question = params[:question]

    # Compute the coach's answer
    @answer = if question == 'I am going to work'
                'Great!'
              elsif question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end

