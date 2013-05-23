class AddAttachmentEnclosureToItems < ActiveRecord::Migration
  def change
    add_attachment :items, :enclosure
  end
end
