require 'rails_helper'

describe 'Expense' do
  it 'should give list of all expences' do
    expense1 = Expense.create(:name => "book" , :amount => 100)
    expense2 = Expense.create(:name => "milk" , :amount => 200)
    expect(Expense.all_expenses).to eq [expense1,expense2]
  end

end