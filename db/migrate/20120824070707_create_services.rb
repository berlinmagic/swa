class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :level
      t.string :experience
      t.string :certificate
      t.string :software
      t.string :hardware
      t.decimal :price, :precision => 17, :scale => 2, :default => 0
      t.references :person
      t.timestamps
    end
    add_index :services, :person_id
  end
end
