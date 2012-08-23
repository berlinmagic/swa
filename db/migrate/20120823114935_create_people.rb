class CreatePeople < ActiveRecord::Migration
  def change
    
    create_table :people do |t|
      t.string  :sex
      t.string  :name
      t.string  :first_name
      t.string  :nick_name
      t.date    :birthday
      t.string  :proffession
      t.text    :description
      t.references :user
      t.timestamps
    end
    
    add_index :people, :user_id

  end
end
