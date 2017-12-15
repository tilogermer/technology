class AddSlugToPlattforms < ActiveRecord::Migration[5.1]
  def change
    add_column :plattforms, :slug, :string
  end
end
