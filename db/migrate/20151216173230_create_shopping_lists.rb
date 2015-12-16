class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.string :status
      t.integer :person_id

      t.timestamps null: false
    end
    add_index :shopping_lists, :person_id
  end
end
