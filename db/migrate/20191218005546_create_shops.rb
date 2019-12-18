class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :country
      t.string :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
