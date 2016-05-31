class AddCoffeeImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :coffee_image, :string
  end
end
