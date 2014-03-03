class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :name
      t.integer :owner_id
      t.string :identifier
      t.index [:identifier, :owner_id]
      t.index [:owner_id, :identifier]

      t.timestamps
    end
  end
end
