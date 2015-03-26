class SaleItensController < ApplicationController
  before_action :set_sale_iten, only: [:show, :edit, :update, :destroy]

  # GET /sale_itens
  # GET /sale_itens.json
  def index
    @sale_itens = SaleIten.all
  end

  # GET /sale_itens/1
  # GET /sale_itens/1.json
  def show
  end

  # GET /sale_itens/new
  def new
    @sale_iten = SaleIten.new
  end

  # GET /sale_itens/1/edit
  def edit
  end

  # POST /sale_itens
  # POST /sale_itens.json
  def create
    @sale_iten = SaleIten.new(sale_iten_params)

    respond_to do |format|
      if @sale_iten.save
        format.html { redirect_to @sale_iten, notice: 'Sale iten was successfully created.' }
        format.json { render :show, status: :created, location: @sale_iten }
      else
        format.html { render :new }
        format.json { render json: @sale_iten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_itens/1
  # PATCH/PUT /sale_itens/1.json
  def update
    respond_to do |format|
      if @sale_iten.update(sale_iten_params)
        format.html { redirect_to @sale_iten, notice: 'Sale iten was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_iten }
      else
        format.html { render :edit }
        format.json { render json: @sale_iten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_itens/1
  # DELETE /sale_itens/1.json
  def destroy
    @sale_iten.destroy
    respond_to do |format|
      format.html { redirect_to sale_itens_url, notice: 'Sale iten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_iten
      @sale_iten = SaleIten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_iten_params
      params[:sale_iten]
    end
end
