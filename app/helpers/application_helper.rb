module ApplicationHelper

  def title
    base_title = "In50hrs"
    return base_title if @title.nil?
    return "#{@title} | #{base_title}"
  end

  # def flash_class(level)
  #   case level
  #   when :notice then "info"
  #   when :error then "error"
  #   when :alert then "warning"
  #   end
  # end

end