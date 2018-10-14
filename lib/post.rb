class Post

    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        self.title = title
        @@all << self   #pushes new inst into a class variable
    end

    def self.all
        @@all
    end

   def author_name
        if self.author != nil
            self.author.name 
        else
            nil 
        end
   end

end