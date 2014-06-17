require 'spec_helper'

describe ResetController do

  describe 'delete_all' do

    it 'should delete all expenses and incomes ' do
      Expense.create(:name => "book" , :amount => 100)
      Income.create(:source => "from suga" , :amount => 200)

      get :delete_all

      response.response_code.should == 302
      expect(Income.count).to eq 0
      expect(Expense.count).to eq 0
    end

  end
end
