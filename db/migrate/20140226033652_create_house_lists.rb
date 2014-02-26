class CreateHouseLists < ActiveRecord::Migration
  def change
    create_table :house_lists do |t|
      t.string :city
      t.string :state
      t.integer :zipCode
      t.string :address

      t.timestamps
    end
  end
end
