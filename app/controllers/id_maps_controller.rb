class IdMapsController < ApplicationController
  before_action :set_id_map, only: [:show, :edit, :update, :destroy]

  # GET /id_maps
  # GET /id_maps.json
  def index
    @id_maps = IdMap.all
  end

  # GET /id_maps/1
  # GET /id_maps/1.json
  def show
  end

  # GET /id_maps/new
  def new
    @id_map = IdMap.new
  end

  # GET /id_maps/1/edit
  def edit
  end

  # POST /id_maps
  # POST /id_maps.json
  def create
    @id_map = IdMap.new(id_map_params)

    respond_to do |format|
      if @id_map.save
        format.html { redirect_to @id_map, notice: 'Id map was successfully created.' }
        format.json { render :show, status: :created, location: @id_map }
      else
        format.html { render :new }
        format.json { render json: @id_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /id_maps/1
  # PATCH/PUT /id_maps/1.json
  def update
    respond_to do |format|
      if @id_map.update(id_map_params)
        format.html { redirect_to @id_map, notice: 'Id map was successfully updated.' }
        format.json { render :show, status: :ok, location: @id_map }
      else
        format.html { render :edit }
        format.json { render json: @id_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id_maps/1
  # DELETE /id_maps/1.json
  def destroy
    @id_map.destroy
    respond_to do |format|
      format.html { redirect_to id_maps_url, notice: 'Id map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id_map
      @id_map = IdMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def id_map_params
      params.require(:id_map).permit(:guide_pack_version_id, :guide_id, :game_id)
    end
end
