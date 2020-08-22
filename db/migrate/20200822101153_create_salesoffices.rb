class CreateSalesoffices < ActiveRecord::Migration[6.0]
  def change
    create_table :salesoffices do |t|
      t.string :name

      t.timestamps
    end
  end
end
