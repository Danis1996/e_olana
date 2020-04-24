class DeclarsController < ApplicationController
  before_action :set_declar, only: [:show, :edit, :update, :destroy]

  # GET /declars
  # GET /declars.json
  def index
    @declars = Declar.all
  end

  # GET /declars/1
  # GET /declars/1.json
  def show
  end

  # GET /declars/new
  def new
    @declar = Declar.new
  end

  # GET /declars/1/edit
  def edit
  end

  # POST /declars
  # POST /declars.json
  def create
    @declar = Declar.new(declar_params)

    respond_to do |format|
      if @declar.save
        format.html { redirect_to @declar, notice: 'Declar was successfully created.' }
        format.json { render :show, status: :created, location: @declar }
      else
        format.html { render :new }
        format.json { render json: @declar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /declars/1
  # PATCH/PUT /declars/1.json
  def update
    respond_to do |format|
      if @declar.update(declar_params)
        format.html { redirect_to @declar, notice: 'Declar was successfully updated.' }
        format.json { render :show, status: :ok, location: @declar }
      else
        format.html { render :edit }
        format.json { render json: @declar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declars/1
  # DELETE /declars/1.json
  def destroy
    @declar.destroy
    respond_to do |format|
      format.html { redirect_to declars_url, notice: 'Declar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_declar
      @declar = Declar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def declar_params
      params.require(:declar).permit(:user, :typa_id, :reponse)
    end
end
