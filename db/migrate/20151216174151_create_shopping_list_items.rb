class CreateShoppingListItems < ActiveRecord::Migration
  def change
    create_table :shopping_list_items do |t|
      t.integer :shopping_list_id
      t.integer :item_id

      t.timestamps null: false
    end
    add_index :shopping_list_items, :shopping_list_id
    add_index :shopping_list_items, :item_id
  end
end
