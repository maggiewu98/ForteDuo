class CreateMaggiewus < ActiveRecord::Migration
  def change
    create_table :maggiewus do |t|
      t.string :name

      t.timestamps
    end
  end
end
