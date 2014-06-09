class IncomesController < ApplicationController
  def index
    @incomes = Income.all
    @remaining_amount = AccountBalance.current_balance
  end

  def add_income
    @new_income = Income.new
  end

  def create_income
    income = Income.create(:source => params[:income][:source],:amount => params[:income][:amount])
    unless income.valid?
      flash[:error] = income.errors.full_messages.join("<br>").html_safe
    else
      flash[:success] = "#{income.source} added to Incomes successfully"
    end
    redirect_to income_index_path
  end
end
