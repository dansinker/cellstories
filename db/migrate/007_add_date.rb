class AddDate < ActiveRecord::Migration
  def self.up
    add_column :stories, :rundate, :date
  end

  def self.down
    remove_column :stories, :rundate, :date
  end
end
