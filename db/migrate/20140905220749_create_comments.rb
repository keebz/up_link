class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.column :user_id, :int
    	t.column :link_id, :int
    	t.column :post, :string
    end
  end
end
