MyExpenseSheet::Application.routes.draw do
  #get "incomes/index"
  #get "expenses/index"

  match "expenses/index" => "expenses#index", :as => :expense_index, via: [:get, :post]
  match "incomes/index" => "incomes#index", :as => :income_index, via: [:get, :post]
  get "expenses/add_expense" => "expenses#add_expense"
  post "expenses/add_expense" => "expenses#create_expense"

  get "incomes/add_income" => "incomes#add_income"
  post "incomes/add_income" => "incomes#create_income"

end
