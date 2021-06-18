class FoodsController < ApplicationController
  def index
    @foods = Food.includes(:user).order(:created_at)
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.new(food_params)
    food.user_id = current_user.id
    if food.save
      redirect_to food
    else
      render :new
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
