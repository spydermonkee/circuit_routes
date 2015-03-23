class BoulderRoutesController < ApplicationController
  def index
    @boulder_routes = if params[:keywords]
      BoulderRoute.where('name ilike ?',"%#{params[:keywords]}%")
    else
      []
    end
  end
end