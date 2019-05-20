class QuestionsController < ApplicationController
  def ask
  end
  
  def coach_answer(your_message)
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message.downcase == "i am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end
  
  def answer
    @ask = params["question"]
    if @ask == "I am going to work"
      @answer = "Great!"
    elsif @ask == @ask.upcase
      @answer = "I can feel your motivation! " + coach_answer(@ask)
    else
      @answer = coach_answer(@ask)
    end
    p @answer
  end
end
