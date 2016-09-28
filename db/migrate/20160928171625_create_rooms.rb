class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :address
      t.float :latitude
      t.float :longitude
      t.integer :profile_id
    end
  end
end
