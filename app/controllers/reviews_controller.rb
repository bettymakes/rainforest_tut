class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @product.reviews.build(params[:review])
    @review.user_id = current_user.id
    if @review.save
      redirect_to products_path, notice: "Review created successfully"
    else
      render :action => :show
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def load_product
    @product = Product.find(params[:product_id])
  end
end
