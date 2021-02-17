class ChangePhoneNumberToRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phoneNumber, :phone_number
  end
end
