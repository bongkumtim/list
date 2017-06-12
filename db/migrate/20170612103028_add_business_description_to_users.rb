class AddBusinessDescriptionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :business_description, :string
  end
end
