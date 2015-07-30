class CreateUsers < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :house_name
      t.integer :rewards_id

      t.timestamps null: false
    end
  end
end
