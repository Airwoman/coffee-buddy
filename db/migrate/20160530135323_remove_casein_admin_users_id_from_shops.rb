class RemoveCaseinAdminUsersIdFromShops < ActiveRecord::Migration
  def change
    remove_column(:shops, :casein_admin_users_id, :integer)
  end
end
