class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :country
      t.string :state_or_province
      t.string :address
      t.integer :number_of_guests
      t.float :price_per_night
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
