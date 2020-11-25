class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_input = params[:question]
    if @user_input
      @answer = if @user_input == 'I am going to work'
                  'Great'
                elsif @user_input.include?('?')
                  'Silly question, get dressed and go to work!'
                else
                  "I don't care, get dressed and go to work!"
                end
    end
    @answer
  end
end
