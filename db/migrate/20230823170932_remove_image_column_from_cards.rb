class RemoveImageColumnFromCards < ActiveRecord::Migration[7.0]
  def up
    remove_column :cards, :arrival_image
    remove_column :cards, :departure_image
  end

  def down
    add_column :cards, :arrival_image, :string
    add_column :cards, :departure_image, :string
  end
end
