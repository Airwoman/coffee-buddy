class AddAvatarToCaseinAdminUsers < ActiveRecord::Migration
  def change
    add_column :casein_admin_users, :avatar, :string
  end
end
