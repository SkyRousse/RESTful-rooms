class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name, :default => "Anonymous"
      t.integer :points, :default => 0
      t.integer :user_id
    end
  end
end
