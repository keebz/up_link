class FixLinkTable < ActiveRecord::Migration
  def change
  	remove_column :links, :rating, :int
  	add_column :links, :description, :string
  	add_column :links, :created, :timestamp
  end
end
