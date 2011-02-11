require 'spec_helper'
require File.expand_path("app/models/user.rb")


# rake environment RAILS_ENV=test db:migrate
# rake environment RAILS_ENV=test db:seed
# rspec spec/models/user_role_spec.rb

describe UserRole do
  let(:testUserName) {"hasmanyTesting"}
  # u = User.find_by_username(  :testUserName)
  #if u then
  #  puts 'destoying test user'
  #  #u.destroy
  #end
  let(:userfix) {User.create!(:username => testUserName, :subdomain => "au", :email => 'ernst@localhost.localdomain', :password => '123456')}
  let(:rolefix) {Role.find_by_name  "superuser"}

  it "should establish a working association from user to role" do
    userfix.roles << rolefix
    userfix.reload.roles.should include rolefix
  end

  it "should establish a bidirectional association from user to role" do
    userfix.roles << rolefix
    rolefix.reload.users.should include userfix
  end


end
