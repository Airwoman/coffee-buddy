class Product < ActiveRecord::Base
  mount_uploader :coffee_image, CoffeeImageUploader
end
