class Expense < ActiveRecord::Base
  validates :name, presence: true
  validates :amount, presence: true

  def self.all_expenses
    Expense.all
  end
end
