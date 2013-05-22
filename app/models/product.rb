class Product < ActiveRecord::Base
  attr_accessible :description, :name, :title

  belongs_to :user

  has_many :items
end
