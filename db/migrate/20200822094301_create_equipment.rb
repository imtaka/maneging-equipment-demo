class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :equipmentcode
      t.date :dateBuyEquipment
      t.integer :price
      t.boolean :rental
      t.boolean :maintenance

      t.timestamps
    end
  end
end
