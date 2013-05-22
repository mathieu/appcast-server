class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :version
      t.text :description
      t.text :relnotes
      t.datetime :pub_date
      t.string :enclosure_name
      t.string :enclosure_type
      t.integer :enclosure_length

      t.references :product

      t.timestamps
    end

    add_index :items, :product_id

  end
end
