class Item < ActiveRecord::Base
  extend FriendlyId

  attr_accessible  :enclosure, :enclosure_fingerprint, :enclosure_mac, :pub_date, :relnotes, :title, :version

  has_attached_file :enclosure
  has_attached_file :enclosure_mac

  belongs_to :product

  friendly_id :version, use: [:slugged, :history]

end
