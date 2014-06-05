class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :source
      t.integer :amount

      t.timestamps
    end
  end
end
