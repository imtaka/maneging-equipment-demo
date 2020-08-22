class AddSalesofficeIdToEquipments < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :salesoffice_id, :integer
  end
end
