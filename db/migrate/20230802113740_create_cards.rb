class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :filename
      t.string :date
      t.string :image

      t.timestamps
    end
  end
end
