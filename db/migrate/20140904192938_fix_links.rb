class FixLinks < ActiveRecord::Migration
  def change
  remove_column :links, :link, :string
  add_column :links, :hyperlink, :string
  end
end
