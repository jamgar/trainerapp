module DeviseHelper
  def devise_error_messages!
    return "" unless devise_error_messages?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-danger" id="error_explanation" role="alert">
      <a href='#' class='close' data-dismiss='alert' &#215;></a>
      <h3>#{sentence}</h3>
      <ul class="list-group">#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end
