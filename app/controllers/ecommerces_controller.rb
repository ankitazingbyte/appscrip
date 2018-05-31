class EcommercesController < ApplicationController
  before_action :set_ecommerce, only: [:show, :edit, :update, :destroy]

  # GET /ecommerces
  # GET /ecommerces.json
  def index
    @ecommerces = Ecommerce.all
  end

  # GET /ecommerces/1
  # GET /ecommerces/1.json
  def show
  end

  # GET /ecommerces/new
  def new
    @ecommerce = Ecommerce.new
  end

  # GET /ecommerces/1/edit
  def edit
  end

  # POST /ecommerces
  # POST /ecommerces.json
  def create
    @ecommerce = Ecommerce.new(ecommerce_params)

    respond_to do |format|
      if @ecommerce.save
        format.html { redirect_to @ecommerce, notice: 'Ecommerce was successfully created.' }
        format.json { render :show, status: :created, location: @ecommerce }
      else
        format.html { render :new }
        format.json { render json: @ecommerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecommerces/1
  # PATCH/PUT /ecommerces/1.json
  def update
    respond_to do |format|
      if @ecommerce.update(ecommerce_params)
        format.html { redirect_to @ecommerce, notice: 'Ecommerce was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecommerce }
      else
        format.html { render :edit }
        format.json { render json: @ecommerce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecommerces/1
  # DELETE /ecommerces/1.json
  def destroy
    @ecommerce.destroy
    respond_to do |format|
      format.html { redirect_to ecommerces_url, notice: 'Ecommerce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecommerce
      @ecommerce = Ecommerce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecommerce_params
      params.require(:ecommerce).permit(:title, :description, :image)
    end
end
