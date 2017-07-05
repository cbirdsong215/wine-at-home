class TastingsController < ApplicationController
  #before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @tastings = Tasting.all
  end

  def show
     @tasting = Tasting.find(params[:id])
  end

  def new
    @tasting = Tasting.new

  end

  def edit
    unless @tasting.editable_by?(current_user)
      flash[:alert] = "Use your 'profile' link to edit your info"
      redirect_to :root
    end
  end

  def create
    @tasting = Tasting.new(tasting_params)
    if @tasting.save
      flash[:alert] = "Tasting added successfully"
      redirect_to tasting_path(@tasting)
    else
      flash[:alert] = @tasting.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Successfully updated.' }
        format.json { render :show, location: @food }
      else
        flash[:alert] = @food.errors.full_messages.to_sentence
        format.html { render :edit }
        format.json { render json: @food.errors }
      end
    end
  end

  def destroy
    if @food.destroyable_by?(current_user)
      @food.destroy
      respond_to do |format|
        format.html { redirect_to food_url, notice: 'Food was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasting
      @tasting = Tasting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasting_params
      params.require(:tasting).permit(:name, :description, :photo, :user_id).merge(user_id: current_user.id)
    end

    def editable_by?(user)
      user == self.user || user.try(:admin?)
    end

    def destroyable_by?(user)
      user.admin?
    end


end
