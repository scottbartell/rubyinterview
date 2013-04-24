class PagesController < ApplicationController
  before_action :set_question, only: [:quiz]
  respond_to :html, :json

  def quiz
    respond_with @question, {only: [:content_html, :answer_html]}
  end

  private
    def set_question
      @question = Question.random
    end
end