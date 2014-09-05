class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.column :link_id, :int
    end
  end
end
