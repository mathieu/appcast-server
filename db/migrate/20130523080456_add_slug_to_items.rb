class AddSlugToItems < ActiveRecord::Migration
  def change
    add_column :items, :slug, :string
    add_index :items, :slug
  end
end