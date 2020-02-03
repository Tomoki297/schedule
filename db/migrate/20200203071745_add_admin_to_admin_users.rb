class AddAdminToAdminUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :admin, :boolean, after: :id
  end
end
