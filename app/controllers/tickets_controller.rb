class TrainsController < ApplicationController
  before_action :set_Train, only: %i[ show edit update destroy ]

  # GET /Trains or /Trains.json
  def index
    @Trains = Train.all
  end

  # GET /Trains/1 or /Trains/1.json
  def show
  end

  # GET /Trains/new
  def new
    @Train = Train.new
  end

  # GET /Trains/1/edit
  def edit
  end

  # POST /Trains or /Trains.json
  def create
    @Train = Train.new(Train_params)

    respond_to do |format|
      if @Train.save
        flash[:alert] = "train ticket save"

        format.html { redirect_to Train_url(@Train), notice: "Train was successfully created." }
        format.json { render :show, status: :created, location: @Train }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @Train.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Trains/1 or /Trains/1.json
  def update
    respond_to do |format|
      if @Train.update(Train_params)
        format.html { redirect_to Train_url(@Train), notice: "Train was successfully updated." }
        format.json { render :show, status: :ok, location: @Train }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @Train.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Trains/1 or /Trains/1.json
  def destroy
    @Train.destroy

    respond_to do |format|
      format.html { redirect_to Trains_url, notice: "Train was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Train
      @Train = Train.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def Train_params
      params.require(:Train).permit(:name, :address, :birthday, :email)
    end
end
