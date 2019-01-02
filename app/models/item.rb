class Item < ActiveRecord::Base
  extend FriendlyId

  is_impressionable

  attr_accessible  :enclosure, :enclosure_fingerprint, :enclosure_mac, :pub_date, :relnotes, :title, :version, :minversion


  attr_accessible :product_id, :enclosure_file_name, :enclosure_content_type, :enclosure_file_size, :enclosure_updated_at, :slug, :enclosure_mac_file_name, :enclosure_mac_content_type, :enclosure_mac_file_size, :enclosure_mac_updated_at

  has_attached_file :enclosure
  validates_attachment_content_type :enclosure, :content_type => ["application/zip", "application/octet-stream"]

  has_attached_file :enclosure_mac
  validates_attachment_content_type :enclosure_mac, :content_type => ["application/zip", "application/octet-stream"]

  belongs_to :product

  friendly_id :version, use: [:slugged, :history]

end
