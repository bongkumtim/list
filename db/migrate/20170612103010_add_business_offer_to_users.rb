class AddBusinessOfferToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :business_offer, :string
  end
end
