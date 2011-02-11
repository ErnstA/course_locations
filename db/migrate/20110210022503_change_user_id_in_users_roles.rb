class ChangeUserIdInUsersRoles < ActiveRecord::Migration
  def self.up
    change_table :users_roles do |t|
      t.change :users_id, :integer,  :null => false
      t.change :roles_id, :integer,  :null => false
    end
  end

  def self.down
    change_table :users_roles do |t|
      t.change :users_id, :integer
      t.change :roles_id, :integer
    end
  end
end
