class AddPeopleIdToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :new_house_id, :integer, null: false
  end
end
