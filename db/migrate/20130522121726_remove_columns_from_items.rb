class RemoveColumnsFromItems < ActiveRecord::Migration
  def up
    remove_column :items, :enclosure_type
    remove_column :items, :enclosure_length
    remove_column :items, :enclosure_name
  end

  def down
    add_column :items, :enclosure_type, :string
    add_column :items, :enclosure_length, :integer
    add_column :items, :enclosure_name, :string
  end
end
