class LendersController < ApplicationController
  before_action :set_lender, only: %i[ show edit update destroy ]

  # GET /lenders or /lenders.json
  def index
    @lenders = Lender.all
  end

  # GET /lenders/1 or /lenders/1.json
  def show
  end

  # GET /lenders/new
  def new
    @lender = Lender.new
  end

  # GET /lenders/1/edit
  def edit
  end

  # POST /lenders or /lenders.json
  def create
    @lender = Lender.new(lender_params)

    respond_to do |format|
      if @lender.save
        format.turbo_stream { render turbo_stream: turbo_stream.replace('lenders_form', partial: 'lenders/form', locals: {lender: Lender.new}) }
        format.html { redirect_to lender_url(@lender), notice: "Lender was successfully created." }
        format.json { render :show, status: :created, location: @lender }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('lenders_form', partial: 'lenders/form', locals: {lender: @lender})}
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lenders/1 or /lenders/1.json
  def update
    respond_to do |format|
      if @lender.update(lender_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace('lenders_form', partial: 'lenders/form', locals: {lender: Lender.new}) }
        format.html { redirect_to lender_url(@lender), notice: "Lender was successfully updated." }
        format.json { render :show, status: :ok, location: @lender }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('lenders_form', partial: 'lenders/form', locals: {lender: @lender})}
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lenders/1 or /lenders/1.json
  def destroy
    @lender.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@lender) }
      format.html { redirect_to lenders_url, notice: "Lender was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lender
      @lender = Lender.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lender_params
      params.require(:lender).permit(:first_name, :last_name, :number_acount)
    end
end
