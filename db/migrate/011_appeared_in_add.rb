class AppearedInAdd < ActiveRecord::Migration
  def self.up
  add_column :stories, :appeared, :text
  end

  def self.down
  remove_column :stories, :appeared, :text
  end
end
