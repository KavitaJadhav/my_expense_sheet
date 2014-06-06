class AccountBalance
  def self.current_balance
    Income.all.collect(&:amount).compact.sum -  Expense.all.collect(&:amount).compact.sum
  end
end