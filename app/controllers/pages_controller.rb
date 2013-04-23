class PagesController < ApplicationController
  before_action :set_question, only: [:quiz]

  def quiz
  end

  private
    def set_question
      @question = Question.random
    end
end