class UsersController < ApplicationController
  before_action :admin_user, only: [:index, :show, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :signed_in_user, only: [:index, :edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = 'Welcome to my Booking System.'
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'Profile successfully updated.'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destory
    flash[:success] = 'User deleted.'
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email,
                :password, :password_confirmation)
    end

    def signed_in_user
      unless signed_in?
        store_location
        flash[:danger] = 'Please sign in.'
        redirect_to signin_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(bookings_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(bookings_url) unless current_user.admin?
    end

end
