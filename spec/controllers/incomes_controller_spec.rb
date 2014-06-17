require 'spec_helper'

describe IncomesController do

  describe 'create_income' do

    it 'should create an income with valid values' do
      income_count_before_post_request = Income.count
      post :create_income, income: {source: "salary", amount: 100}

      income = Income.last

      response.response_code.should == 302
      expect(Income.count).to eq income_count_before_post_request+1
      expect(income.source).to eq "salary"
      expect(income.amount).to eq 100
    end


    it 'should not create an income with invalid values' do
      income_count_before_post_request = Income.count
      post :create_income, income: {source: nil, amount: nil}
      expect(Income.count).to eq income_count_before_post_request
    end

  end

end
