class WinesController < ApplicationController
  def index
    @tasting = Tasting.find(params[:tasting_id])
    @wine = Wine.new(tasting: @tasting)
    @wines = @tasting.wines
  end

  def show
  end

  def new
    @tasting = Tasting.find(params[:tasting_id])
    @wine = Wine.new(tasting: @tasting)
  end

  def edit
    unless @tasting.editable_by?(current_user)
      flash[:alert] = "Use your 'profile' link to edit your info"
      redirect_to :root
    end
  end

  def create
    @tasting = Tasting.find(params[:tasting_id])
    @wine = Wine.create(wine_params)
    @wine.tasting = @tasting
    if @tasting.save
      flash[:notice] = "wine added successfully"
      redirect_to tasting_path(@tasting)
    else
      flash[:notice] = @wine.errors.full_messages.to_sentence
      render :new
    end
  end

  end



  def destroy
    if @wine.destroyable_by?(current_user)
      @wine.destroy
      respond_to do |format|
        format.html { redirect_to food_url, notice: 'Food was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine
      @wine = Wine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wine_params
      params.require(:wine).permit(:name, :appellation, :varietal, :year, :tasting_id)
    end

    def editable_by?(user)
      user == self.user || user.try(:admin?)
    end

    def destroyable_by?(user)
      user.admin?
    end
