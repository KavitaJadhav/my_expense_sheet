require 'spec_helper'

describe IncomesController do

  describe 'create_income' do

    it 'should create an income' do

      post :create_income, income: {source: "salary", amount: 100}

      income = Income.last

      Income.count.should == 1
      income.source.should == "salary"
      income.amount.should == 100

    end
  end

end
