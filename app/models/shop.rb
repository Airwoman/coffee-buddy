class Shop < ActiveRecord::Base
  has_and_belongs_to_many :casein_admin_users, class_name: 'Casein::AdminUser'
  has_many :meetings
  mount_uploader :image, ImageUploader

  geocoded_by :address   # can also be an IP address
  after_validation :geocode
end
