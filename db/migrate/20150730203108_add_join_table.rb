class AddJoinTable < ActiveRecord::Migration
  def change
    create_table :house_rewards do |t|
      t.integer :house_id
      t.integer :reward_id

      t.timestamps null: false
    end
  end
end
