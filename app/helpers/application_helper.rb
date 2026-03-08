module ApplicationHelper
  def error_message_for(object, attribute)
    return unless object.errors[attribute].any?
    content_tag(:p, object.errors[attribute].first, class: "mt-1 text-sm text-red-600")
  end
end
