class NepremicninesController < ApplicationController
  before_action :set_nepremicnine, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  # GET /nepremicnines or /nepremicnines.json
  def index
    @nepremicnines = Nepremicnine.all
  end

  # GET /nepremicnines/1 or /nepremicnines/1.json
  def show
  end

  # GET /nepremicnines/new
  def new
    @nepremicnine = Nepremicnine.new
  end

  # GET /nepremicnines/1/edit
  def edit
  end

  # POST /nepremicnines or /nepremicnines.json
  def create
    @nepremicnine = Nepremicnine.new(nepremicnine_params)
    @nepremicnine.user_id = current_user.id

    respond_to do |format|
      if @nepremicnine.save
        format.html { redirect_to @nepremicnine, notice: "Nepremicnine was successfully created." }
        format.json { render :show, status: :created, location: @nepremicnine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nepremicnine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nepremicnines/1 or /nepremicnines/1.json
  def update
    respond_to do |format|
      if @nepremicnine.update(nepremicnine_params)
        format.html { redirect_to @nepremicnine, notice: "Nepremicnine was successfully updated." }
        format.json { render :show, status: :ok, location: @nepremicnine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nepremicnine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nepremicnines/1 or /nepremicnines/1.json
  def destroy
    @nepremicnine.destroy
    respond_to do |format|
      format.html { redirect_to nepremicnines_url, notice: "Nepremicnine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nepremicnine
      @nepremicnine = Nepremicnine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nepremicnine_params
      params.require(:nepremicnine).permit(:name, :address, :price, :rooms, :bathrooms, :photo, :photo_cache)
    end
end
