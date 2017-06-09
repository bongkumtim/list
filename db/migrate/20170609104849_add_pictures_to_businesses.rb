class AddPicturesToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :pictures, :json
  end
end
