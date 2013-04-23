class Question < ActiveRecord::Base
  belongs_to :category
  before_save :render_html

  validates_presence_of :category, :content, :answer

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
