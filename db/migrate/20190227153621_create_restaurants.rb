class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :string
      t.string :phone_number
      t.string :string
      t.string :category
      t.string :string
      t.integer :stars

      t.timestamps
    end
  end
end