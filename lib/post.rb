class Post

    attr_accessor :title, :author, :author_name

    @@all = []

    def initialize(title)
        self.title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if self.author == nil
            return nil
        else
            author_name = self.author.name
        end
    end

end