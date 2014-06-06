class Income < ActiveRecord::Base
  validates :source, presence: true
  validates :amount, presence: true
end
