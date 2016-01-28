module ApplicationHelper
  def split_lines(input, options)
    delimiter = options[:by] || "<br />"

    windows_safe = input.gsub("\r\n","\n")
    lines = windows_safe.split("\n")
    html_escaped = lines.map {|line| CGI::escapeHTML(line) }

    html_escaped.join(delimiter).html_safe
  end

end
