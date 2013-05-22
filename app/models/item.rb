class Item < ActiveRecord::Base
  attr_accessible :description, :enclosure, :enclosure_fingerprint, :pub_date, :relnotes, :title, :version

  has_attached_file :enclosure

  belongs_to :product

end
