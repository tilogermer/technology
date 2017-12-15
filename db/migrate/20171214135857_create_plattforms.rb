class CreatePlattforms < ActiveRecord::Migration[5.1]
  def change
    create_table :plattforms do |t|
      t.string :name
      t.text :description
      t.string :owner
      t.string :account
      t.string :account_date_start
      t.decimal :price

      t.timestamps
    end
  end
end
