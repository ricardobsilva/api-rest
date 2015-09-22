class AddDoerToPeople < ActiveRecord::Migration
  def change
    add_column :people, :doer, :string
  end
end
