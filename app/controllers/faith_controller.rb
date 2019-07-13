class FaithController < ApplicationController

  def index
    @beliefs = Belief.all
    @abouts = About.all
  end

end
