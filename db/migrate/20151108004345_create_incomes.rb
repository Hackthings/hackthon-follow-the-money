class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :subject
      t.integer :households
      t.integer :families
      t.integer :married_couples
      t.integer :nonfamily

      t.timestamps null: false
    end
  end
end
