class HomeController < ApplicationController
  def index
    @abouts = About.all
    @sermon = Sermon.all
    @beliefs = Belief.all
  end

  def create
  end

end