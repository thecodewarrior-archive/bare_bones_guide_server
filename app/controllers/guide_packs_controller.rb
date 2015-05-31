class GuidePacksController < ApplicationController
  before_action :set_guide_pack, only: [:show, :edit, :update, :destroy]

  # GET /guide_packs
  # GET /guide_packs.json
  def index
    @guide_packs = GuidePack.all
  end

  # GET /guide_packs/1
  # GET /guide_packs/1.json
  def show
  end

  # GET /guide_packs/new
  def new
    @guide_pack = GuidePack.new
  end

  # GET /guide_packs/1/edit
  def edit
  end

  # POST /guide_packs
  # POST /guide_packs.json
  def create
    @guide_pack = GuidePack.new(guide_pack_params)

    respond_to do |format|
      if @guide_pack.save
        format.html { redirect_to @guide_pack, notice: 'Guide pack was successfully created.' }
        format.json { render :show, status: :created, location: @guide_pack }
      else
        format.html { render :new }
        format.json { render json: @guide_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guide_packs/1
  # PATCH/PUT /guide_packs/1.json
  def update
    respond_to do |format|
      if @guide_pack.update(guide_pack_params)
        format.html { redirect_to @guide_pack, notice: 'Guide pack was successfully updated.' }
        format.json { render :show, status: :ok, location: @guide_pack }
      else
        format.html { render :edit }
        format.json { render json: @guide_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_packs/1
  # DELETE /guide_packs/1.json
  def destroy
    @guide_pack.destroy
    respond_to do |format|
      format.html { redirect_to guide_packs_url, notice: 'Guide pack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide_pack
      @guide_pack = GuidePack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_pack_params
      params.require(:guide_pack).permit(:packid, :pretty_name, :description, :is_private)
    end
end
