class CoinTypesController < ApplicationController
  before_action :set_coin_type, only: %i[ show edit update destroy ]

  # GET /coin_types or /coin_types.json
  def index
    @coin_types = CoinType.all
  end

  # GET /coin_types/1 or /coin_types/1.json
  def show
  end

  # GET /coin_types/new
  def new
    @coin_type = CoinType.new
  end

  # GET /coin_types/1/edit
  def edit
  end

  # POST /coin_types or /coin_types.json
  def create
    @coin_type = CoinType.new(coin_type_params)

    respond_to do |format|
      if @coin_type.save
        format.html { redirect_to coin_type_url(@coin_type), notice: "Coin type was successfully created." }
        format.json { render :show, status: :created, location: @coin_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coin_types/1 or /coin_types/1.json
  def update
    respond_to do |format|
      if @coin_type.update(coin_type_params)
        format.html { redirect_to coin_type_url(@coin_type), notice: "Coin type was successfully updated." }
        format.json { render :show, status: :ok, location: @coin_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coin_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_types/1 or /coin_types/1.json
  def destroy
    @coin_type.destroy

    respond_to do |format|
      format.html { redirect_to coin_types_url, notice: "Coin type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin_type
      @coin_type = CoinType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coin_type_params
      params.require(:coin_type).permit(:name, :denomination, :style, :composition, :first_issued, :last_issued, :obverse_image, :reverse_image)
    end
end
