class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.belongs_to :casein_admin_users

      t.timestamps null: false
    end
  end
end
