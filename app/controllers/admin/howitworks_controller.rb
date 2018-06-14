class Admin::HowitworksController < Admin::AdminController
  before_action :set_howitwork, only: [:show, :edit, :update, :destroy]

  # GET /howitworks
  # GET /howitworks.json
  def index
    @howitworks = Howitwork.all
  end

  # GET /howitworks/1
  # GET /howitworks/1.json
  def show
  end

  # GET /howitworks/new
  def new
    @howitwork = Howitwork.new
  end

  # GET /howitworks/1/edit
  def edit
  end

  # POST /howitworks
  # POST /howitworks.json
  def create
    @howitwork = Howitwork.new(howitwork_params)

    respond_to do |format|
      if @howitwork.save
        format.html { redirect_to @howitwork, notice: 'Howitwork was successfully created.' }
        format.json { render :show, status: :created, location: @howitwork }
      else
        format.html { render :new }
        format.json { render json: @howitwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /howitworks/1
  # PATCH/PUT /howitworks/1.json
  def update
    respond_to do |format|
      if @howitwork.update(howitwork_params)
        format.html { redirect_to @howitwork, notice: 'Howitwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @howitwork }
      else
        format.html { render :edit }
        format.json { render json: @howitwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howitworks/1
  # DELETE /howitworks/1.json
  def destroy
    @howitwork.destroy
    respond_to do |format|
      format.html { redirect_to howitworks_url, notice: 'Howitwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_howitwork
      @howitwork = Howitwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def howitwork_params
      params.require(:howitwork).permit(:title1, :title2, :heading, :body, :image)
    end
end
