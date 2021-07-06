class Author

    attr_accessor :name, :post

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |post_instance|
            post_instance.author = self
        end
    end

    def add_post post
        post.author = self
    end

    def add_post_by_title post
        new_post = Post.new(post)
        add_post(new_post)
    end

    def self.post_count
        Post.all.length
    end

end
