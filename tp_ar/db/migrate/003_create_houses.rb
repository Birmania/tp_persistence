class CreateHouses < ActiveRecord::Migration
  def up
    create_table :houses do |t|
    end
  end

  def down
    drop_table :houses
  end
end