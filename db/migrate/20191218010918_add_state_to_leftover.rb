class AddStateToLeftover < ActiveRecord::Migration[5.2]
  def change
    add_column :leftovers, :state, :string
  end
end
