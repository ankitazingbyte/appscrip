class Admin::VideoUploadsController < Admin::AdminController
  before_action :set_video_upload, only: [:show, :edit, :update, :destroy]

  # GET /video_uploads
  # GET /video_uploads.json
  def index
    @video_uploads = VideoUpload.all
  end

  # GET /video_uploads/1
  # GET /video_uploads/1.json
  def show
  end

  # GET /video_uploads/new
  def new
    @video_upload = VideoUpload.new
  end

  # GET /video_uploads/1/edit
  def edit
  end

  # POST /video_uploads
  # POST /video_uploads.json
  def create
    @video_upload = VideoUpload.new(video_upload_params)

    respond_to do |format|
      if @video_upload.save
        format.html { redirect_to @video_upload, notice: 'Video upload was successfully created.' }
        format.json { render :show, status: :created, location: @video_upload }
      else
        format.html { render :new }
        format.json { render json: @video_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_uploads/1
  # PATCH/PUT /video_uploads/1.json
  def update
    respond_to do |format|
      if @video_upload.update(video_upload_params)
        format.html { redirect_to @video_upload, notice: 'Video upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_upload }
      else
        format.html { render :edit }
        format.json { render json: @video_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_uploads/1
  # DELETE /video_uploads/1.json
  def destroy
    @video_upload.destroy
    respond_to do |format|
      format.html { redirect_to video_uploads_url, notice: 'Video upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_upload
      @video_upload = VideoUpload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_upload_params
      params.require(:video_upload).permit(:video)
    end
end
