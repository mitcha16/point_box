class AddJoinTable < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.string :house_id
      t.integer :reward_id

      t.timestamps null: false
    end
  end
end
