class AddEnclosureMacToItems < ActiveRecord::Migration
  def change
    add_attachment :items, :enclosure_mac
  end
end
