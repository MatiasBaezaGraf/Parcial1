class MemHonsController < ApplicationController
  before_action :set_mem_hon, only: [:show, :edit, :update, :destroy]

  # GET /mem_hons
  # GET /mem_hons.json
  def index
    @mem_hons = MemHon.all
  end

  # GET /mem_hons/1
  # GET /mem_hons/1.json
  def show
  end

  # GET /mem_hons/new
  def new
    @mem_hon = MemHon.new
  end

  # GET /mem_hons/1/edit
  def edit
  end

  # POST /mem_hons
  # POST /mem_hons.json
  def create
    @mem_hon = MemHon.new(mem_hon_params)

    respond_to do |format|
      if @mem_hon.save
        format.html { redirect_to @mem_hon, notice: 'Mem hon was successfully created.' }
        format.json { render :show, status: :created, location: @mem_hon }
      else
        format.html { render :new }
        format.json { render json: @mem_hon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mem_hons/1
  # PATCH/PUT /mem_hons/1.json
  def update
    respond_to do |format|
      if @mem_hon.update(mem_hon_params)
        format.html { redirect_to @mem_hon, notice: 'Mem hon was successfully updated.' }
        format.json { render :show, status: :ok, location: @mem_hon }
      else
        format.html { render :edit }
        format.json { render json: @mem_hon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mem_hons/1
  # DELETE /mem_hons/1.json
  def destroy
    @mem_hon.destroy
    respond_to do |format|
      format.html { redirect_to mem_hons_url, notice: 'Mem hon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mem_hon
      @mem_hon = MemHon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mem_hon_params
      params.require(:mem_hon).permit(:member_id, :honor_id)
    end
end
