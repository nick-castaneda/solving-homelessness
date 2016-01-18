class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :cause
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :cc_type
      t.integer :cc_number
      t.integer :cc_expir
      t.integer :cc_sec
      t.integer :amount

      t.timestamps null: false
    end
  end
end
