class BookingsController < ApplicationController
  def index
    if current_user.admin?
      @bookings = Booking.all.where('Date >= ?', Date.today).order(:date)
    else
      @bookings = current_user.bookings.where('Date >= ?', Date.today).order(:date)
    end
  end

  def show
    @booking = Booking.find(params[:id])
    if booking_user
      @booking
    elsif current_user.admin?
      @booking
    else
      redirect_to bookings_url
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
    @booking = Booking.find(params[:id])
    if booking_user
      @booking
    elsif current_user.admin?
      @booking
    else
      redirect_to bookings_url
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save!
      flash[:success] = 'Thank you. Your booking has been made.'
      redirect_to @booking
    else
      render 'new'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:success] = 'Your booking has been updated.'
      redirect_to @booking
    else
      render 'edit'
    end
  end

  def destroy
    Booking.find(params[:id]).destroy
    flash[:success] = 'Your booking has been cancelled.'
    redirect_to bookings_url
  end

  private

    def booking_params
      params.require(:booking).permit(:name, :date, :time, :user_id)
    end

    def booking_user
      current_user.id == @booking.user_id
    end

end
