class FoodsController < ApplicationController
  def index
    @foods = Food.order(:created_at)
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
