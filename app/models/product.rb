class Product < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :description, :name, :title

  belongs_to :user

  has_many :items

  friendly_id :name, use: [:slugged, :history]

  #def should_generate_new_friendly_id?
  #  new_record?
  #end

end
