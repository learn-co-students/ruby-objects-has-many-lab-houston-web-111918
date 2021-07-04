class Post
  attr_accessor :title, :author


  @all = []


  def initialize(title)
    @title = title 
  end

  def author_name
    if self.author
      return self.author.name
    else
     return nil
    end
  end

  def self.all
    @@all
  end
end
