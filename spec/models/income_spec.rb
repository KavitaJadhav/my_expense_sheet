require 'rails_helper'

describe 'Income' do
  it 'should pass' do
    income1 = Income.create(:source => "salary" , :amount => 100)
    income2 = Income.create(:source => "from suga" , :amount => 200)
    expect(Income.all_incomes).to eq [income1,income2]
  end

end