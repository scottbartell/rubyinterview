class Question < ActiveRecord::Base
  before_save :render_html

  validates_presence_of :content, :answer, :category_name

  def self.random
    order('random()').first
  end

  private

  def render_html
    options = {
      no_intra_emphasis: true,
      tables: true,
      fenced_code_blocks: true,
      autolink: true,
      strikethrough: true,
      space_after_headers: true,
      superscript: true
    }
    markdown = Redcarpet::Markdown.new(RubyInterview::MarkdownRenderer, options)
    self.content_html = markdown.render(self.content)
    self.answer_html = markdown.render(self.answer)
  end
end
