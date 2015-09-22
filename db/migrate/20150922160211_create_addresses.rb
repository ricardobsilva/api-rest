class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :patio
      t.string :district
      t.string :number
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
