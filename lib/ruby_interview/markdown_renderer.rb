class RubyInterview::MarkdownRenderer < Redcarpet::Render::HTML
  def block_code(code, language)
    if language
      Pygments.highlight(code, lexer: language.to_sym, options: {linespans: 'line'})
    else
      code
    end
  end
end