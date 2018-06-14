class Admin::ContactpagesController < Admin::AdminController
  before_action :set_contactpage, only: [:show, :edit, :update, :destroy]

  # GET /contactpages
  # GET /contactpages.json
  def index
    @contactpages = Contactpage.all
  end

  # GET /contactpages/1
  # GET /contactpages/1.json
  def show
  end

  # GET /contactpages/new
  def new
    @contactpage = Contactpage.new
  end

  # GET /contactpages/1/edit
  def edit
  end

  # POST /contactpages
  # POST /contactpages.json
  def create
    @contactpage = Contactpage.new(contactpage_params)

    respond_to do |format|
      if @contactpage.save
        format.html { redirect_to admin_contactpage_path(@contactpage), notice: 'Contactpage was successfully created.' }
        format.json { render :show, status: :created, location: @contactpage }
      else
        format.html { render :new }
        format.json { render json: @contactpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactpages/1
  # PATCH/PUT /contactpages/1.json
  def update
    respond_to do |format|
      if @contactpage.update(contactpage_params)
        format.html { redirect_to admin_contactpage_path(@contactpage), notice: 'Contactpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactpage }
      else
        format.html { render :edit }
        format.json { render json: @contactpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactpages/1
  # DELETE /contactpages/1.json
  def destroy
    @contactpage.destroy
    respond_to do |format|
      format.html { redirect_to admin_contactpages_url, notice: 'Contactpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactpage
      @contactpage = Contactpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactpage_params
      params.require(:contactpage).permit(:title, :subtitle, :phone, :address, :mail)
    end
end
