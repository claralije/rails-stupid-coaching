class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    @coach_answer = nil
    @coah_aswer_1 = "Great"
    @coach_answer_2 = "Silly question, get dressed and go to work!"
    @coach_answer_3 = "I don't care, get dressed and go to work!"

    if @ask == "I am going to work"
      @coach_answer = @coah_aswer_1
    elsif @ask.last == "?"
      @coach_answer = @coach_answer_2
    else
      @coach_answer = @coach_answer_3
    end
  end
end
