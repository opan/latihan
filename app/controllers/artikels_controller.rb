class ArtikelsController < ApplicationController
  before_action :set_artikel, only: [:show, :edit, :update, :destroy]

  # GET /artikels
  # GET /artikels.json
  def index
    @artikels = Artikel.all
  end

  # GET /artikels/1
  # GET /artikels/1.json
  def show
  end

  # GET /artikels/new
  def new
    @artikel = Artikel.new
  end

  # GET /artikels/1/edit
  def edit
  end

  # POST /artikels
  # POST /artikels.json
  def create
    @artikel = Artikel.new(artikel_params)

    respond_to do |format|
      if @artikel.save
        format.html { redirect_to @artikel, notice: 'Artikel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @artikel }
      else
        format.html { render action: 'new' }
        format.json { render json: @artikel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artikels/1
  # PATCH/PUT /artikels/1.json
  def update
    respond_to do |format|
      if @artikel.update(artikel_params)
        format.html { redirect_to @artikel, notice: 'Artikel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @artikel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artikels/1
  # DELETE /artikels/1.json
  def destroy
    @artikel.destroy
    respond_to do |format|
      format.html { redirect_to artikels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artikel
      @artikel = Artikel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artikel_params
      params.require(:artikel).permit(:title, :ar_type, :ar_con)
    end
end
