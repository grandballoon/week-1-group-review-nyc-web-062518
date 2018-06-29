# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
user.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]

class User
@@all = []

attr_reader :name
attr_accessor :photos

def initialize(name)
  @name = name
  @photos = []
  @@all << self
end

def self.all
  @@all
end

end

class Photo

@@all = []

attr_accessor :user, :comments

def initialize
  @@all << self
  @comments = []
end

def make_comment(comment)
  com = Comment.new(comment)
  @comments << com
end

def self.all
  @@all
end

end

class Comment
  @@all = []

attr_accessor :comment_body

  def initialize(string)
    @comment_body = string
    @@all << self 
  end

  def self.all
   @@all
  end

end
