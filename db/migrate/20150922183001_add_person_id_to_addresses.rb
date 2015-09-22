class AddPersonIdToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :person_id, :integer
    add_index :addresses, :person_id
  end
end
