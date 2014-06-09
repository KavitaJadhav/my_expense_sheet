class Income < ActiveRecord::Base
  validates :source, presence: true
  validates :amount, presence: true

  def self.all_incomes
    Income.all
  end

end
