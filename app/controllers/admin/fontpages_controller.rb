class Admin::FontpagesController < Admin::AdminController
  before_action :set_fontpage, only: [:show, :edit, :update, :destroy]

  # GET /fontpages
  # GET /fontpages.json
  def index
    @fontpages = Fontpage.all
  end

  # GET /fontpages/1
  # GET /fontpages/1.json
  def show
  end

  # GET /fontpages/new
  def new
    @fontpage = Fontpage.new
  end

  # GET /fontpages/1/edit
  def edit
  end

  # POST /fontpages
  # POST /fontpages.json
  def create
    @fontpage = Fontpage.new(fontpage_params)

    respond_to do |format|
      if @fontpage.save
        format.html { redirect_to admin_fontpage_url(@fontpage), notice: 'Fontpage was successfully created.' }
        format.json { render :show, status: :created, location: @fontpage }
      else
        format.html { render :new }
        format.json { render json: @fontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fontpages/1
  # PATCH/PUT /fontpages/1.json
  def update
    respond_to do |format|
      if @fontpage.update(fontpage_params)
        format.html { redirect_to admin_fontpage_url(@fontpage), notice: 'Fontpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @fontpage }
      else
        format.html { render :edit }
        format.json { render json: @fontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fontpages/1
  # DELETE /fontpages/1.json
  def destroy
    @fontpage.destroy
    respond_to do |format|
      format.html { redirect_to admin_fontpages_url, notice: 'Fontpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fontpage
      @fontpage = Fontpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fontpage_params
      params.require(:fontpage).permit(:title1, :title2, :image, :heading, :body)
    end
end
