class Author
attr_accessor :name, :post, :posts, :author
@@all = []
def initialize(name)
    @name = name
    @posts = []
    @@all << self
end

def posts
    @posts
end

def add_post(post) #instance of post
    
    @posts << post #was failing when I put self; solved issue by putting post!
    post.author = self
end

def add_post_by_title(title)
    p = Post.new(title)
    p.author = self
    @posts << p

end

def self.post_count
    count = 0 
    @@all.each do |author|
      author.posts.each do |post|
        count += 1
      end 
    end 
    count
  end



end