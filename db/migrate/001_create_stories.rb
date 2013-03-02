class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |story|
      story.column "title", :string
    end
  end

  def self.down
    drop_table :stories
  end
end
