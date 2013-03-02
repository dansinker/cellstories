class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |author|
      author.column "name", :string
      author.column "bio", :text
    end
  end

  def self.down
    drop_table :authors
  end
end
