class CupcakesController < ApplicationController
  before_action :set_cupcake, only: %i[ show edit update destroy ]

  # GET /cupcakes or /cupcakes.json
  def index
    @cupcakes = Cupcake.all
  end

  # GET /cupcakes/1 or /cupcakes/1.json
  def show
  end

  # GET /cupcakes/new
  def new
    @cupcake = Cupcake.new
  end

  # GET /cupcakes/1/edit
  def edit
  end

  # POST /cupcakes or /cupcakes.json
  def create
    @cupcake = Cupcake.new(cupcake_params)

    respond_to do |format|
      if @cupcake.save
        format.html { redirect_to cupcake_url(@cupcake), notice: "Cupcake was successfully created." }
        format.json { render :show, status: :created, location: @cupcake }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cupcake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupcakes/1 or /cupcakes/1.json
  def update
    respond_to do |format|
      if @cupcake.update(cupcake_params)
        format.html { redirect_to cupcake_url(@cupcake), notice: "Cupcake was successfully updated." }
        format.json { render :show, status: :ok, location: @cupcake }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cupcake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupcakes/1 or /cupcakes/1.json
  def destroy
    @cupcake.destroy

    respond_to do |format|
      format.html { redirect_to cupcakes_url, notice: "Cupcake was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupcake
      @cupcake = Cupcake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cupcake_params
      params.require(:cupcake).permit(:title, :price, :description, :photo_url, :flavor)
    end
end
