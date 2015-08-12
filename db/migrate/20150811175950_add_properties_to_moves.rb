class AddPropertiesToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :name, :string
  	add_column :moves, :startup, :integer
  	add_column :moves, :char, :string
  	add_column :moves, :active, :integer
  	add_column :moves, :recovery, :integer
  	add_column :moves, :adv_block, :integer
  	add_column :moves, :adv_hit, :integer
  end
end
