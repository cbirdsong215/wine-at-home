class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:alert] = "You have successfully signed up!"
      redirect_to root_path(@user)
    else
      flash[:alert] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  def index
    @users = User.all
  end

  def edit
      redirect_to :root
      flash[:alert] = "Edit your profile by clicking your 'profile' link"
  end

  def show
    @user = User.find(current_user.id)
  end


 private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar, :admin)
  end
end
