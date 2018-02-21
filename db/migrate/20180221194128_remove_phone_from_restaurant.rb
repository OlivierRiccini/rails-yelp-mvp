class RemovePhoneFromRestaurant < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :phone, :string
  end
end
