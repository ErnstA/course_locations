class CreateUsersRoles < ActiveRecord::Migration
  def self.up
    # the join table for :users has_many :trough :users_roles
    create_table :users_roles, :id => false do |t|
      t.references :users
      t.references :roles
    end
  end

  def self.down
    drop_table :users_roles
  end
end
