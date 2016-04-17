module ApplicationHelper
  def full_title(page_title)
    base_title = 'ProgUroki'
    if page_title.empty?
      base_title
    else
      "#{page_title}, #{base_title}"
    end
  end

  def markdown(source)
    Kramdown::Document.new(source, coderay_line_numbers: nil).to_html.html_safe
  end
end
