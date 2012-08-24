class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string      :name
      t.text        :description
      t.string      :language
      t.string      :software
      t.string      :hardware
      t.string      :certificate
      t.string      :experience
      t.string      :level
      t.string      :scare_crop
      t.string      :panorama_crop
      t.string      :image_uid
      
      t.references  :person

      t.timestamps
    end
    add_index :skills, :person_id
  end
end
