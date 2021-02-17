# class ReviewsController < ApplicationController
#   def index
#   end

#   def show
#   end

#   def new
#     @review = Review.new
#   end

#   def create
#     @review = Reviews.new(article_params)
#     if @review.save
#       redirect_to @review, notice: 'Review was successfully created'
#     else
#       render :new
#     end
#   end
# end

# private

# def article_params
#   params.require(:review).permit(:content, :rating)
# end

class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
