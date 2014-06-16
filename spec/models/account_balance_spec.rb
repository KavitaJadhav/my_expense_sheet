require 'rails_helper'

describe 'AccountBalance' do
  it 'should give current balance as using incomes and expences' do
    income1 = Income.create(:source => "salary" , :amount => 200)
    expense1 = Expense.create(:name => "book" , :amount => 100)

    expect(AccountBalance.current_balance).to eq 100
  end

end