class ExchangesController < ApplicationController
  before_action :set_exchange, only: [:show, :edit, :update, :destroy]
  before_action :check_login
  authorize_resource
  
  # GET /exchanges
  # GET /exchanges.json
  def index
    @exchanges = Exchange.all
  end

  # GET /exchanges/1
  # GET /exchanges/1.json
  def show
  end

  # GET /exchanges/new
  def new
    @exchange = Exchange.new
  end

  # GET /exchanges/1/edit
  def edit
  end

  # POST /exchanges
  # POST /exchanges.json
  def create
    @exchange = Exchange.new(exchange_params)

    respond_to do |format|
      if @exchange.save
        format.html { redirect_to @exchange, notice: 'Exchange was successfully created.' }
        format.json { render action: 'show', status: :created, location: @exchange }
      else
        format.html { render action: 'new' }
        format.json { render json: @exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exchanges/1
  # PATCH/PUT /exchanges/1.json
  def update
    respond_to do |format|
      if @exchange.update(exchange_params)
        format.html { redirect_to @exchange, notice: 'Exchange was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exchanges/1
  # DELETE /exchanges/1.json
  def destroy
    @exchange.destroy
    respond_to do |format|
      format.html { redirect_to exchanges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exchange
      @exchange = Exchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exchange_params
      params.require(:exchange).permit(:visit_id, :user_id, :ultrafines, :halfs, :pogos, :blues, :one_qt, :two_qt, :three_gal, :eight_gal, :bleach_bottle, :alcohol_whipes, :cookers, :cottons, :ties, :bleach, :condoms, :ascorbic_acid, :pieces_of_lit, :narcan, :secondary_exchange, :returned_needles)
    end
end
