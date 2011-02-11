# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# the loation tree must have a root which is always called 'world' and at least one node under world
# which is called localhost and stands for the calm sorver on which this location tree is situated.
treeRoot = Area.create :name => "world"
localhost = Area.create :name => "localhost", :parent_id => treeRoot.id

# The roles for authorization
Role.create :name => :world_config, :description => "Can change everything in all locations"
Role.create :name => :superuser, :description => "Can change everything in his/her authorized organisation"
Role.create :name => :admin, :description => "Can add a venue in his/her authorized organisation"
Role.create :name => :registrar, :description => "Can access only what is necessary to process an application"

