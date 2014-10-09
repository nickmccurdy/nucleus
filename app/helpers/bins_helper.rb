require 'rouge'

module BinsHelper
  def highlight(source)
    formatter = Rouge::Formatters::HTML.new(inline_theme: 'github')
    lexer = Rouge::Lexers::JSON.new
    formatter.format(lexer.lex(source)).html_safe
  end
end
