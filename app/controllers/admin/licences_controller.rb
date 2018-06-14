class Admin::LicencesController < Admin::AdminController
  before_action :set_licence, only: [:show, :edit, :update, :destroy]

  # GET /licences
  # GET /licences.json
  def index
    @licences = Licence.all
  end

  # GET /licences/1
  # GET /licences/1.json
  def show
  end

  # GET /licences/new
  def new
    @licence = Licence.new
  end

  # GET /licences/1/edit
  def edit
  end

  # POST /licences
  # POST /licences.json
  def create
    @licence = Licence.new(licence_params)

    respond_to do |format|
      if @licence.save
        format.html { redirect_to admin_licence_url(@licence), notice: 'Licence was successfully created.' }
        format.json { render :show, status: :created, location: @licence }
      else
        format.html { render :new }
        format.json { render json: @licence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /licences/1
  # PATCH/PUT /licences/1.json
  def update
    respond_to do |format|
      if @licence.update(licence_params)
        format.html { redirect_to admin_licence_url(@licence), notice: 'Licence was successfully updated.' }
        format.json { render :show, status: :ok, location: @licence }
      else
        format.html { render :edit }
        format.json { render json: @licence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licences/1
  # DELETE /licences/1.json
  def destroy
    @licence.destroy
    respond_to do |format|
      format.html { redirect_to admin_licences_url, notice: 'Licence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_licence
      @licence = Licence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def licence_params
      params.require(:licence).permit(:question, :answer)
    end
end
