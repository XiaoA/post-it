module ApplicationHelper
  def fix_url(str)
    str.starts_with?("http://") ? str: "http://#{str}"
  end

  def display_datetime(dt)
    dt.strftime("%B, %-m, %Y at %l:%S:%M %Z")
  end
end
