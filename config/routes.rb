MyExpenseSheet::Application.routes.draw do
  #get "expenses/index"

  match "expenses/index" => "expenses#index", :as => :index, via: [:get, :post]
  get "expenses/add_expense" => "expenses#add_expense"
  post "expenses/add_expense" => "expenses#create_expense"

end
