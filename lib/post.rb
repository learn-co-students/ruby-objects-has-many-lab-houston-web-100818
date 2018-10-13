class Post
attr_accessor :title, :author
@@all = []
def initialize(title)
    self.title = title
    self.author = author
    @@all << self

end

def self.all
    @@all
end

def author_name
    if self.author 
        author.name 
    else
        nil
    end
end




end