class RemoveDescriptionFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :description
  end
end
