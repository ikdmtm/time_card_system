class RemoveColumnFromCards < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :filename, :string
    remove_column :cards, :date, :string
    remove_column :cards, :image, :string
  end
end
