class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :name
      t.text :description
      t.references :user

      t.timestamps
    end

    add_index :products, :user_id
  end
end
