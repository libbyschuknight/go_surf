class SurfSpotsController < ApplicationController

  def new
    @surf_spot = SurfSpot.new
  end

  def create
    @surf_spot = SurfSpot.new(surf_spot_params)

    @surf_spot.save
    redirect_to @surf_spot
  end

  def show
    @surf_spot = SurfSpot.find(params[:id])
  end

  def index
    @surf_spots = SurfSpot.all
  end

  private

    def surf_spot_params
      params.require(:surf_spot).permit(
        :name,
        :description,
        :place,
        :region,
        :country,
        :latitude,
        :longtitude,
        :stoke_rating
      )
    end

end
