class ChangeParentIdType < ActiveRecord::Migration
  def self.up
    # do not understandwhy but:
    # parent_id  | character varying(255)
    #
    remove_column :locations, :parent_id
    add_column :locations, :parent_id, :integer
  end

  def self.down
  end
end
