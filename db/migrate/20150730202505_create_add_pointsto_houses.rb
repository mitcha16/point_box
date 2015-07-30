class CreateAddPointstoHouses < ActiveRecord::Migration
  def change
    add_column :houses, :points, :integer
  end
end
