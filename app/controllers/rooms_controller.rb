class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @hotels = Hotel.all
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end

  def new
    @room = Room.new
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.new(room_params)
    @room.hotel = @hotel
    if @room.save!
      redirect_to
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    @room = Room.find(params[:id])
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
  end

  private

  def room_params
    params.require(:room).permit(:price_per_night, :capacity, :hotel_id)
  end
end
