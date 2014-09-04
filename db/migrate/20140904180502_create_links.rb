class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    t.column :title, :string
    t.column :link, :string
    t.column :rating, :int
    end
  end
end
