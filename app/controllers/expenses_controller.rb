class ExpensesController < ApplicationController

  def index

    @expenses = Expense.all
  end

  def add_expense
    @new_expense = Expense.new
  end

  def create_expense
    expense = Expense.create(:name => params[:expense][:name],:amount => params[:expense][:amount])
    unless expense.valid?
      flash[:error] = expense.errors.full_messages.join("<br>").html_safe
    else
      flash[:success] = "#{expense[:name]}' added successfully"
    end
    redirect_to index_path
  end
end
