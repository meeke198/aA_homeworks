class AddPersontoHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :house_id, :integer, null: false
  end
end
