class AddDetailsToCards < ActiveRecord::Migration[7.0]
  def up
    add_column :cards, :arrival_time, :string
    add_column :cards, :arrival_image, :string
    add_column :cards, :departure_time, :string
    add_column :cards, :departure_image, :string
  end

  def down
    remove_column :cards, :filename, :string
    remove_column :cards, :date, :string
    remove_column :cards, :image, :string
  end
end