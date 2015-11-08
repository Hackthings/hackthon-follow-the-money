class AddColumnsToIncome < ActiveRecord::Migration
  def change
    add_column :incomes, :year, :integer
    add_column :incomes, :zipcode, :integer
  end
end
