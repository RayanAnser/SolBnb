class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user_id: current_user.id)
    @rooms = current_user.rooms
  end
end
