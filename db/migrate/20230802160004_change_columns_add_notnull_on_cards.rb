class ChangeColumnsAddNotnullOnCards < ActiveRecord::Migration[7.0]
  def change
    change_column_null :cards, :arrival_time, false
    change_column_null :cards, :arrival_image, false
    change_column_null :cards, :departure_time, false
    change_column_null :cards, :departure_image, false
  end
end
