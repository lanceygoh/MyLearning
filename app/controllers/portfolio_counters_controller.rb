class PortfolioCountersController < ApplicationController
  before_action :set_portfolio_counter, only: [:show, :edit, :update, :destroy]

  # GET /portfolio_counters
  # GET /portfolio_counters.json
  def index
    @portfolio_counters = PortfolioCounter.all
  end

  # GET /portfolio_counters/1
  # GET /portfolio_counters/1.json
  def show
  end

  def new 
    @portfolio_counter = PortfolioCounter.new
  end
  # GET /portfolio_counters/new
  # def new(something)
  #   @portfolio_counter = PortfolioCounter.new
  #   puts something
  #   @portfolio = Portfolio.find(params[:id])
  # end

  # GET /portfolio_counters/1/edit
  def edit
  end

  # POST /portfolio_counters
  # POST /portfolio_counters.json
  def create
    @portfolio_counter = PortfolioCounter.new(portfolio_counter_params)

    respond_to do |format|
      if @portfolio_counter.save
        format.html { redirect_to @portfolio_counter, notice: 'Portfolio counter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @portfolio_counter }
      else
        format.html { render action: 'new' }
        format.json { render json: @portfolio_counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_counters/1
  # PATCH/PUT /portfolio_counters/1.json
  def update
    respond_to do |format|
      if @portfolio_counter.update(portfolio_counter_params)
        format.html { redirect_to @portfolio_counter, notice: 'Portfolio counter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @portfolio_counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_counters/1
  # DELETE /portfolio_counters/1.json
  def destroy
    @portfolio_counter.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_counters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_counter
      @portfolio_counter = PortfolioCounter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_counter_params
      params.require(:portfolio_counter).permit(:pid, :cid, :price, :purchasedate, :size)
    end
end
