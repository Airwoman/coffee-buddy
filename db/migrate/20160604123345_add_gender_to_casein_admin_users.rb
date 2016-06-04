class AddGenderToCaseinAdminUsers < ActiveRecord::Migration
  def change
    add_column :casein_admin_users, :gender, :string
  end
end
