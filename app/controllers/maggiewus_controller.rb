class MaggiewusController < ApplicationController
  before_action :set_maggiewu, only: [:show, :edit, :update, :destroy]

  def maggie_wu
  end

  # GET /maggiewus
  # GET /maggiewus.json
  def index
    @maggiewus = Maggiewu.all
  end

  # GET /maggiewus/1
  # GET /maggiewus/1.json
  def show
  end

  # GET /maggiewus/new
  def new
    @maggiewu = Maggiewu.new
  end

  # GET /maggiewus/1/edit
  def edit
  end

  # POST /maggiewus
  # POST /maggiewus.json
  def create
    @maggiewu = Maggiewu.new(maggiewu_params)

    respond_to do |format|
      if @maggiewu.save
        format.html { redirect_to @maggiewu, notice: 'Maggiewu was successfully created.' }
        format.json { render :show, status: :created, location: @maggiewu }
      else
        format.html { render :new }
        format.json { render json: @maggiewu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maggiewus/1
  # PATCH/PUT /maggiewus/1.json
  def update
    respond_to do |format|
      if @maggiewu.update(maggiewu_params)
        format.html { redirect_to @maggiewu, notice: 'Maggiewu was successfully updated.' }
        format.json { render :show, status: :ok, location: @maggiewu }
      else
        format.html { render :edit }
        format.json { render json: @maggiewu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maggiewus/1
  # DELETE /maggiewus/1.json
  def destroy
    @maggiewu.destroy
    respond_to do |format|
      format.html { redirect_to maggiewus_url, notice: 'Maggiewu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maggiewu
      @maggiewu = Maggiewu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maggiewu_params
      params.require(:maggiewu).permit(:name)
    end
end
