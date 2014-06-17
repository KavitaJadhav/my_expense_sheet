require 'spec_helper'

describe IncomesController do

  describe 'create_income' do

    it 'should create an income with valid values' do

      post :create_income, income: {source: "salary", amount: 100}

      income = Income.last

      response.response_code.should == 302

      expect(Income.count).to eq 1
      expect(income.source).to eq "salary"
      expect(income.amount).to eq 100

    end


    it 'should not create an income with invalid values' do

      post :create_income, income: {source: nil, amount: nil}

      #expect(response).not_to be_success

      expect(Income.count).to eq 0

    end

  end

end
