class Product < ActiveRecord::Base
  extend FriendlyId

  is_impressionable

  attr_accessible :description, :name, :title, :user_id, :slug

  has_and_belongs_to_many :users

  has_many :items , order: 'pub_date desc'

  friendly_id :name, use: [:slugged, :history]

  #def should_generate_new_friendly_id?
  #  new_record?
  #end

end
