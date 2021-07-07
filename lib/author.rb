class Author

    attr_accessor :name
    @@posts = []
    @@post_count = 0

    def initialize (name)
        @name = name
    end

    def posts
        @@posts
    end

    def add_post (post)
        post.author = self
        @@posts << post
        @@post_count += 1
    end

    def add_post_by_title (title)
        post = Post.new (title)
        @@posts << post
        @@post_count += 1
        post.author = self
    end

    def self.post_count
        @@post_count
    end

end