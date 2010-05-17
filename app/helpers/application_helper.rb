# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def title
    base_title = "World Cup Predictor"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{h(@title)}"
    end
  end

  def logo
    image_tag("logo.jpg", :alt => "World Cup Predictor", :class => "round")
  end
end
