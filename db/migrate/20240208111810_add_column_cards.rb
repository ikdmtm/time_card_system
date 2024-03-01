class AddColumnCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :arrival_image, :string
    add_column :cards, :departure_image, :string
  end
end
