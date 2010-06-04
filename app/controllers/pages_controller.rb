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

  def calendar
    @title = "Calendar"
    @games = [
      Game.find(:all, :conditions => "phase = 'A'"),
      Game.find(:all, :conditions => "phase = 'B'"),
      Game.find(:all, :conditions => "phase = 'C'"),
      Game.find(:all, :conditions => "phase = 'D'"),
      Game.find(:all, :conditions => "phase = 'E'"),
      Game.find(:all, :conditions => "phase = 'F'"),
      Game.find(:all, :conditions => "phase = 'G'"),
      Game.find(:all, :conditions => "phase = 'H'")
    ]
  end

end
