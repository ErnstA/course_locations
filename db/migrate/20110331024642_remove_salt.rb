class RemoveSalt < ActiveRecord::Migration
  #[DEVISE] From version 1.2, there is no need to set your encryptor to bcrypt since encryptors are only enabled if you include :encryptable in your models. To update your app, please:
  #
  #1) Remove config.encryptor from your initializer;
  #2) Add t.encryptable to your old migrations;
  #3) [Optional] Remove password_salt in a new recent migration. Bcrypt does not require it anymore.
  #
  def self.up
    remove_column :users, :password_salt
  end

  def self.down
  end
end
