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
    @user = current_user
  end

  def show
    @user = User.find(current_user.id)
  end

  def destroy
    reviews = Review.where(user_id: current_user)
    reviews.destroy_all
    foods = Food.where(user_id: current_user)
    foods.destroy_all
    current_user.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Profile was successfully delete.' }
      format.json { head :no_content }
    end
  end


 private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar, :admin)
  end
end
