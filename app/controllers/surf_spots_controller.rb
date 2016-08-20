class SurfSpotsController < ApplicationController

  def new
    @surf_spot = SurfSpot.new
  end

end
