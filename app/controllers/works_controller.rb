class WorksController < ApplicationController

  def show
    @work = Work.find(params[:id])
    @averageRating = @work.getAverageRating()
  end

  def new
    @user = User.find(params[:user_id])
    @work = @user.works.new
  end

  def create
    @user = User.find(params[:user_id])
    @work = @user.works.new(work_params)
    if @work.save
      redirect_to user_path(@work.user)
    else
      render :new
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to user_path(@work.user)
  end

  def edit
    @work = Work.find(params[:id])
    @user = @work.user
  end

  def update
    @work = Work.find(params[:id])
    @user = @work.user
    if @work.update(work_params)
      redirect_to user_path(@work.user)
    else
      render :edit
    end
  end


private
  def work_params
    params.require(:work).permit(:name, :image, :media, :published, :rating, :content)
  end
end
