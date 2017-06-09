class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :title
      t.text :description
      t.string :rating
      t.string :srp
      t.string :commision

      t.timestamps
    end
  end
end
