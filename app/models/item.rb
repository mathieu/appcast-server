class Item < ActiveRecord::Base
  attr_accessible :description, :enclosure_length, :enclosure_name, :enclosure_type, :pub_date, :relnotes, :title, :version

  belongs_to :product

end
