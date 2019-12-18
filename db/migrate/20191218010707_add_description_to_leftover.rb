class AddDescriptionToLeftover < ActiveRecord::Migration[5.2]
  def change
    add_column :leftovers, :description, :text
    add_column :leftovers, :dlc, :date
  end
end
