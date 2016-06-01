class Shop < ActiveRecord::Base
  has_and_belongs_to_many :casein_admin_users, class_name: 'Casein::AdminUser'
  mount_uploader :image, ImageUploader
end
