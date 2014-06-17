require 'spec_helper'

describe ExpensesController do

  describe 'create_expense' do

    it 'should create an expense with valid values' do
      expense_count_before_post_request = Expense.count
      post :create_expense, expense: {name: "book", amount: 100}

      expense = Expense.last

      response.response_code.should == 302
      expect(Expense.count).to eq expense_count_before_post_request+1
      expect(expense.name).to eq "book"
      expect(expense.amount).to eq 100
      expect(flash[:success]).to eq "book added to Expenses successfully"
    end


    it 'should not create an expense with invalid values' do
      expense_count_before_post_request = Expense.count
      post :create_expense, expense: {name: nil, amount: nil}
      expect(Expense.count).to eq expense_count_before_post_request
      expect(flash[:error]).to eq "Name can't be blank<br>Amount can't be blank"
    end

  end
end