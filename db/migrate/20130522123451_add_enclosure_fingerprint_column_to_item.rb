class AddEnclosureFingerprintColumnToItem < ActiveRecord::Migration
  def change
    add_column :items, :enclosure_fingerprint, :string
  end
end
