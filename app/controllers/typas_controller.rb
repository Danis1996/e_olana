class TypasController < ApplicationController
  before_action :set_typa, only: [:show, :edit, :update, :destroy]

  # GET /typas
  # GET /typas.json
  def index
    @typas = Typa.all
  end

  # GET /typas/1
  # GET /typas/1.json
  def show
  end

  # GET /typas/new
  def new
    @typa = Typa.new
  end

  # GET /typas/1/edit
  def edit
  end

  # POST /typas
  # POST /typas.json
  def create
    @typa = Typa.new(typa_params)

    respond_to do |format|
      if @typa.save
        format.html { redirect_to @typa, notice: 'Typa was successfully created.' }
        format.json { render :show, status: :created, location: @typa }
      else
        format.html { render :new }
        format.json { render json: @typa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typas/1
  # PATCH/PUT /typas/1.json
  def update
    respond_to do |format|
      if @typa.update(typa_params)
        format.html { redirect_to @typa, notice: 'Typa was successfully updated.' }
        format.json { render :show, status: :ok, location: @typa }
      else
        format.html { render :edit }
        format.json { render json: @typa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typas/1
  # DELETE /typas/1.json
  def destroy
    @typa.destroy
    respond_to do |format|
      format.html { redirect_to typas_url, notice: 'Typa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typa
      @typa = Typa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def typa_params
      params.require(:typa).permit(:titre, :durre, :hafa, :vue)
    end
end
