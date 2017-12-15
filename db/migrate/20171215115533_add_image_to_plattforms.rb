class AddImageToPlattforms < ActiveRecord::Migration[5.1]
  def change
    add_column :plattforms, :image, :string
  end
end
