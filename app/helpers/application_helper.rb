require 'redcarpet'

module ApplicationHelper
  def markdown(text)
    render_options = {
      # add options here
    }
    renderer = Redcarpet::Render::HTML.new(render_options)

    extensions = {
      # add extensions here
    }
    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end
end
