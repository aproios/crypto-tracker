class CryptosTrackersController < ApplicationController
  before_action :set_cryptos_tracker, only: [:show, :edit, :update, :destroy]

  # GET /cryptos_trackers
  # GET /cryptos_trackers.json
  def index
    @cryptos_trackers = CryptosTracker.all
  end

  # GET /cryptos_trackers/1
  # GET /cryptos_trackers/1.json
  def show
  end

  # GET /cryptos_trackers/new
  def new
    @cryptos_tracker = CryptosTracker.new
  end

  # GET /cryptos_trackers/1/edit
  def edit
  end

  # POST /cryptos_trackers
  # POST /cryptos_trackers.json
  def create
    @cryptos_tracker = CryptosTracker.new(cryptos_tracker_params)

    respond_to do |format|
      if @cryptos_tracker.save
        format.html { redirect_to @cryptos_tracker, notice: 'Cryptos tracker was successfully created.' }
        format.json { render :show, status: :created, location: @cryptos_tracker }
      else
        format.html { render :new }
        format.json { render json: @cryptos_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cryptos_trackers/1
  # PATCH/PUT /cryptos_trackers/1.json
  def update
    respond_to do |format|
      if @cryptos_tracker.update(cryptos_tracker_params)
        format.html { redirect_to @cryptos_tracker, notice: 'Cryptos tracker was successfully updated.' }
        format.json { render :show, status: :ok, location: @cryptos_tracker }
      else
        format.html { render :edit }
        format.json { render json: @cryptos_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cryptos_trackers/1
  # DELETE /cryptos_trackers/1.json
  def destroy
    @cryptos_tracker.destroy
    respond_to do |format|
      format.html { redirect_to cryptos_trackers_url, notice: 'Cryptos tracker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cryptos_tracker
      @cryptos_tracker = CryptosTracker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cryptos_tracker_params
      params.require(:cryptos_tracker).permit(:symbol, :user_id, :cost_per, :amount_owned)
    end
end
