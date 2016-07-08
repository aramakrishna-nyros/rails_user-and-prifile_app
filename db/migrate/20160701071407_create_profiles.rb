class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :gender
      t.integer :dob
      t.string :profession
      t.integer :mobile_no

      t.timestamps null: false
    end
  end
end
