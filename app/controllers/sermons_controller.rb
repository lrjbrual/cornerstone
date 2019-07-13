class SermonsController < ApplicationController
  def index
    @sermons = Sermon.all
    @abouts = About.all
  end

  def show
    @sermon = Sermon.find(params[:id])
  end
end
