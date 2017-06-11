class AddCompanyRegistrationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company_registration, :string
  end
end
