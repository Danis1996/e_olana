class HommesController < ApplicationController
  before_action :set_homme, only: [:show, :edit, :update, :destroy]

  # GET /hommes
  # GET /hommes.json
  def index
    @hommes = Homme.all
  end

  # GET /hommes/1
  # GET /hommes/1.json
  def show
  end

  # GET /hommes/new
  def new
    @homme = Homme.new
  end

  # GET /hommes/1/edit
  def edit
  end

  # POST /hommes
  # POST /hommes.json
  def create
    @homme = Homme.new(homme_params)

    respond_to do |format|
      if @homme.save
        format.html { redirect_to @homme, notice: 'Homme was successfully created.' }
        format.json { render :show, status: :created, location: @homme }
      else
        format.html { render :new }
        format.json { render json: @homme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hommes/1
  # PATCH/PUT /hommes/1.json
  def update
    respond_to do |format|
      if @homme.update(homme_params)
        format.html { redirect_to @homme, notice: 'Homme was successfully updated.' }
        format.json { render :show, status: :ok, location: @homme }
      else
        format.html { render :edit }
        format.json { render json: @homme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hommes/1
  # DELETE /hommes/1.json
  def destroy
    @homme.destroy
    respond_to do |format|
      format.html { redirect_to hommes_url, notice: 'Homme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homme
      @homme = Homme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def homme_params
      params.fetch(:homme, {})
    end
end
