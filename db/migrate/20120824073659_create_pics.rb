class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :image_uid
      t.string :cropping
      t.references :owner,    :polymorphic => true

      t.timestamps
    end
    add_index :pics, [:owner_type, :owner_id]
  end
end
