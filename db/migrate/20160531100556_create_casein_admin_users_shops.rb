class CreateCaseinAdminUsersShops < ActiveRecord::Migration
  def change
    create_table :casein_admin_users_shops, id: false do |t|
    t.integer "admin_user_id"
    t.integer "shop_id"
    end
  end
end
