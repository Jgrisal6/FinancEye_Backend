class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[ show edit update destroy ]

  # GET /expenses or /expenses.json
  def index
    @expenses = Expense.all
    @expense = Expense.new
  end

  # GET /expenses/1 or /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
    #@expense.lenders.build
    @lender = Lender.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses or /expenses.json
  def create
    @expense = Expense.new(expense_params)

    if params[:expense][:new_lender].present?
      lender = Lender.find_or_create_by(name: params[:expense][:new_lender])
      @expense.lender = lender
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:expense_name, :lender, :category, :new_lender)
  end

  # PATCH/PUT /expenses/1 or /expenses/1.json
  def update
  
  end

  # DELETE /expenses/1 or /expenses/1.json
  def destroy
    @expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:expense_name, :value, :date, :extra, :category_name, :currency_name, :new_lender,
        lender_attributes: [:first_name, :last_name, :number_acount, :_destroy]
        )
    end
end
