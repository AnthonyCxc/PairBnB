class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
    	t.boolean :admin, null: false, default: false

      t.timestamps
    end
  end
end
