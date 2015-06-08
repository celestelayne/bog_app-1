class AddLairToCreatures < ActiveRecord::Migration
  def change
    add_column :creatures, :lair, :string
  end
end
