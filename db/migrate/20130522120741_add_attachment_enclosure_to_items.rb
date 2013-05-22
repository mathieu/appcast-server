class AddAttachmentEnclosureToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :enclosure
    end
  end

  def self.down
    drop_attached_file :items, :enclosure
  end
end
