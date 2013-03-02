class CreateAddMaintexts < ActiveRecord::Migration
  def self.up
    add_column :stories, :maintext, :text
  end

  def self.down
    remove_column :stories, :maintext, :text
  end
end
