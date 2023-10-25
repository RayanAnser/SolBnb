class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save!
      redirect_to _path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    @hotel = Hotel.find(params[:id])
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :address)
  end

end
