class ReviewsController < ApplicationController
  def create

  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
