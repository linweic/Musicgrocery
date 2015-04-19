class CreateFavorates < ActiveRecord::Migration
  def change
    create_table :favorates do |t|
      t.string :email
      t.string :artist

      t.timestamps
    end
  end
end
