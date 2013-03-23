class FaresController < ApplicationController
  def index
  end

  def new
    @fare = Fare.new
  end

  def create
    @fare = Fare.new(params[:fare])
    if @fare.save
      redirect_to root_url, notice: "Thanks for adding your fare! You're making the world a better place :-)"
    else
      render :new
    end
  end

  def edit
  end
end
