class GuideImagesController < ApplicationController
  before_action :set_guide_image, only: [:show, :edit, :update, :destroy]

  # GET /guide_images
  # GET /guide_images.json
  def index
    @guide_images = GuideImage.all
  end

  # GET /guide_images/1
  # GET /guide_images/1.json
  def show
  end

  # GET /guide_images/new
  def new
    @guide_image = GuideImage.new
  end

  # GET /guide_images/1/edit
  def edit
  end

  # POST /guide_images
  # POST /guide_images.json
  def create
    @guide_image = GuideImage.new(guide_image_params)

    respond_to do |format|
      if @guide_image.save
        format.html { redirect_to @guide_image, notice: 'Guide image was successfully created.' }
        format.json { render :show, status: :created, location: @guide_image }
      else
        format.html { render :new }
        format.json { render json: @guide_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guide_images/1
  # PATCH/PUT /guide_images/1.json
  def update
    respond_to do |format|
      if @guide_image.update(guide_image_params)
        format.html { redirect_to @guide_image, notice: 'Guide image was successfully updated.' }
        format.json { render :show, status: :ok, location: @guide_image }
      else
        format.html { render :edit }
        format.json { render json: @guide_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_images/1
  # DELETE /guide_images/1.json
  def destroy
    @guide_image.destroy
    respond_to do |format|
      format.html { redirect_to guide_images_url, notice: 'Guide image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide_image
      @guide_image = GuideImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_image_params
      params.require(:guide_image).permit(:guide_pack_version_id, :path, :title, :description, :manifest_version)
    end
end
