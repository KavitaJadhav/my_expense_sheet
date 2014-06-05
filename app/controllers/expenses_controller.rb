class ExpensesController < ApplicationController
  def index
    @expenses = [{:name => "Milk" ,:amount => 100}, {:name => "Movie" ,:amount => 200}, {:name => "Novel" ,:amount => 500}]
  end
end
