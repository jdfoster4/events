class StaticPagesController < ApplicationController
  def index
  end

  def about
    page = params['pages']
    render route(page, "about")
  end

  def documents
    render "documents"
  end

  private

    def route(page, prefix)
      if has_view?(page, prefix)
        return "#{prefix}#{page}"
      else
        return "about_us"
      end
    end

    def has_view?(page, prefix="")
      prefix << "_" unless prefix.empty?
      views = Dir.entries('./app/views/static_pages').
                delete_if { |entry| [".", ".."].include?(entry) }
      views.map! { |view| view.gsub(/[.][h][t][m][l]/,"").gsub(/[.][e][r][b]/,"") }
      return views.include?("#{prefix}#{page}")
    end
end
