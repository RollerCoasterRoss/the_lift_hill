class Api::AttractionReviewsController < ApplicationController
  def index
    @attraction_reviews = AttractionReview.all
    render 'index.json.jb'
  end

  def create
    @attraction_review = AttractionReview.new(
                                              body: params[:body],
                                              fun_factor: params[:fun_factor],
                                              fear_factor: params[:fear_factor],
                                              user_id: params[:user_id],
                                              attraction_id: params[:attraction_id]
      )

    if @attraction_review.save
      render 'show.json.jb'
    else
      render json: { errors: @attraction_review.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
