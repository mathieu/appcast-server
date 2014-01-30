class CreateUsersProductsJoinTable < ActiveRecord::Migration
  def up
    create_table :products_users, id: false do |t|
      t.integer :user_id
      t.integer :product_id
    end

    Product.all.each do |p|
      user = User.find(p.user_id)
      if (user) then
        p.users << user
        p.save
      end
    end
  end

  def down
    drop_table :products_users
  end
end
