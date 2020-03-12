class Api::AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
    render 'index.json.jb'
  end

  def show
    @attraction = Attraction.find(params[:id])
    render 'show.json.jb'
  end
end
