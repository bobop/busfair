class FaresController < ApplicationController
  def index
  end

  def show
    @fare = Fare.find(params[:id])
  end

  def new
    @fare = Fare.new
  end

  def create
    @fare = Fare.new(params[:fare])
    if @fare.save
      redirect_to edit_fare_url(@fare)
    else
      render :new
    end
  end

  def edit
    @fare = Fare.find(params[:id])
  end

  def update
    @fare = Fare.find(params[:id])
    if @fare.update_attributes(params[:fare])
      redirect_to fare_url(@fare)
    else
      render :edit
    end
  end
end
