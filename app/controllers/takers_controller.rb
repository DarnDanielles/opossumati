class TakersController < ApplicationController
  before_action :set_taker, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  
  # GET /takers
  # GET /takers.json
  def index
    @takers = Taker.all
  end

  # GET /takers/1
  # GET /takers/1.json
  def show
  end

  # GET /takers/new
  def new
    @taker = Taker.new
  end

  # GET /takers/1/edit
  def edit
  end

  # POST /takers
  # POST /takers.json
  def create
    @taker = Taker.new(taker_params)

    respond_to do |format|
      if @taker.save
        format.html { redirect_to @taker, notice: 'Taker was successfully created.' }
        format.json { render :show, status: :created, location: @taker }
      else
        format.html { render :new }
        format.json { render json: @taker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takers/1
  # PATCH/PUT /takers/1.json
  def update
    respond_to do |format|
      if @taker.update(taker_params)
        format.html { redirect_to @taker, notice: 'Taker was successfully updated.' }
        format.json { render :show, status: :ok, location: @taker }
      else
        format.html { render :edit }
        format.json { render json: @taker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takers/1
  # DELETE /takers/1.json
  def destroy
    @taker.destroy
    respond_to do |format|
      format.html { redirect_to takers_url, notice: 'Taker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taker
      @taker = Taker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taker_params
      params.require(:taker).permit(:survey_id, :email)
    end
end
