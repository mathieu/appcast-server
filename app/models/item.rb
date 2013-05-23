class Item < ActiveRecord::Base
  extend FriendlyId

  attr_accessible  :enclosure, :enclosure_fingerprint, :enclosure_mac, :pub_date, :relnotes, :title, :version


  attr_accessible :product_id, :enclosure_file_name, :enclosure_content_type, :enclosure_file_size, :enclosure_updated_at, :slug, :enclosure_mac_file_name, :enclosure_mac_content_type, :enclosure_mac_file_size, :enclosure_mac_updated_at

  has_attached_file :enclosure
  has_attached_file :enclosure_mac

  belongs_to :product

  friendly_id :version, use: [:slugged, :history]

end
