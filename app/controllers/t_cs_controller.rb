class TCsController < ApplicationController
  before_action :set_tc, only: %i[ show edit update destroy ]

  # GET /tcs or /tcs.json
  def index
    @tcs = Tc.all
  end

  # GET /tcs/1 or /tcs/1.json
  def show
  end

  # GET /tcs/new
  def new
    @tc = Tc.new
  end

  # GET /tcs/1/edit
  def edit
  end

  # POST /tcs or /tcs.json
  def create
    @tc = Tc.new(tc_params)

    respond_to do |format|
      if @tc.save
        format.html { redirect_to @tc, notice: "Tc was successfully created." }
        format.json { render :show, status: :created, location: @tc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcs/1 or /tcs/1.json
  def update
    respond_to do |format|
      if @tc.update(tc_params)
        format.html { redirect_to @tc, notice: "Tc was successfully updated." }
        format.json { render :show, status: :ok, location: @tc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcs/1 or /tcs/1.json
  def destroy
    @tc.destroy
    respond_to do |format|
      format.html { redirect_to tcs_url, notice: "Tc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tc
      @tc = Tc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tc_params
      params.require(:tc).permit(:sentence, :sentence_order, :rank_of_importance, :company_id)
    end
end
