class RemoveStarsFromRestaurant < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :stars, :integer
  end
end
