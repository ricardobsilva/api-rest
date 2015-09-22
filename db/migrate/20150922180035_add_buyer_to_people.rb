class AddBuyerToPeople < ActiveRecord::Migration
  def change
    add_column :people, :buyer, :string
  end
end
