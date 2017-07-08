class PairingsController < ApplicationController
  def index
    @tasting = Tasting.find(params[:tasting_id])
    @pairing = Pairing.new(tasting: @tasting)
    @pairings = @tasting.pairings
  end


  def show
  end

  def new
    @tasting = Tasting.find(params[:tasting_id])
    @pairing = Pairing.new(tasting: @tasting)
  end

  def create
    @tasting = Tasting.find(params[:tasting_id])
    @pairing = Pairing.create(pairing_params)
    @pairing.tasting = @tasting
    if @tasting.save
      flash[:notice] = "Pairing added successfully"
      redirect_to tasting_path(@tasting)
    else
      flash[:notice] = @pairing.errors.full_messages.to_sentence
      render :new
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pairing
      @pairing = Pairing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pairing_params
      params.require(:pairing).permit(:name, :serving_suggestion, :tasting_id)
    end

    def editable_by?(user)
      user == self.user || user.try(:admin?)
    end

    def destroyable_by?(user)
      user.admin?
    end
  end
