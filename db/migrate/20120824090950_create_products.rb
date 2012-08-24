class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      
      t.string :name
      t.string :manufactor
      t.string :product_type
      t.string :usecase
      t.string :requirements
      
      t.hstore :data
      
      t.integer :person_id

      t.timestamps
    end
    
    add_index :products, :data
    add_index :products, :person_id
    add_index :products, :name
    
  end
end
