class AddMinversionToItems < ActiveRecord::Migration
  def change
    add_column :items, :minversion, :string
  end
end
