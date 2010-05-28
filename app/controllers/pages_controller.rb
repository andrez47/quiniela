class PagesController < ApplicationController

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

  def terms
    @title = "Terms of Use"
    render :layout => false
  end
end
