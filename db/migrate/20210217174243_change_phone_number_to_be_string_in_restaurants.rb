class ChangePhoneNumberToBeStringInRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phoneNumber, :string
  end
end
