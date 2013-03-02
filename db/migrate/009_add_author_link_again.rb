class AddAuthorLinkAgain < ActiveRecord::Migration
    def self.up
    add_column :stories, :author_id, :string
  end

  def self.down
    remove_column :stories, :author_id, :string
  end
end
