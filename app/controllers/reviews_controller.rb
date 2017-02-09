class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
    @work = Work.find(params[:work_id])
    @user = @work.user
  end

  def new
    @work = Work.find(params[:work_id])
    @user = @work.user
    @review = @work.reviews.new
  end

  def create
    @work = Work.find(params[:work_id])
    @review = @work.reviews.new(review_params)
    @review.user_id = @work.user.id
    if @review.save
      redirect_to work_path(@review.work)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_work_path(@review.work)
  end

  def edit
    @review = Review.find(params[:id])
    @work = Work.find(params[:work_id])
    @user = @work.user
  end

  def update
    @review = Review.find(params[:id])
    @work = Work.find(params[:work_id])
    if @review.update(review_params)
      redirect_to user_work_path(@review.work)
    else
      render :edit
    end
  end

private
  def review_params
    params.require(:review).permit(:title, :username, :rating, :content)
  end
end
