class Story < ActiveRecord::Base
  validates_presence_of :title, :maintext
  belongs_to :author
  belongs_to :library
  
  def author_name
    author.name unless author.nil?
  end
  
  def author_name=(name)
    self.author = Author.find_or_create_by_name(name)
  end
  
end
