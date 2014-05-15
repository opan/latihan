class PuisisController < ApplicationController
  before_action :set_puisi, only: [:show, :edit, :update, :destroy]

  # GET /puisis
  # GET /puisis.json
  def index
    @puisis = Puisi.all
  end

  # GET /puisis/1
  # GET /puisis/1.json
  def show
  end

  # GET /puisis/new
  def new
    @puisi = Puisi.new
  end

  # GET /puisis/1/edit
  def edit
  end

  # POST /puisis
  # POST /puisis.json
  def create
    @puisi = Puisi.new(puisi_params)

    respond_to do |format|
      if @puisi.save
        format.html { redirect_to @puisi, notice: 'Puisi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @puisi }
      else
        format.html { render action: 'new' }
        format.json { render json: @puisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puisis/1
  # PATCH/PUT /puisis/1.json
  def update
    respond_to do |format|
      if @puisi.update(puisi_params)
        format.html { redirect_to @puisi, notice: 'Puisi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @puisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puisis/1
  # DELETE /puisis/1.json
  def destroy
    @puisi.destroy
    respond_to do |format|
      format.html { redirect_to puisis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puisi
      @puisi = Puisi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puisi_params
      params.require(:puisi).permit(:title, :puisi_type, :puisi_tema, :puisi_for, :puisi_con)
    end
end
