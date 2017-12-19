# You can see the list of places that Ruby will look for methods for a given class by calling the ancestors class method.

module AcceptsComments
  def comments
    # Shorter approach.
    # @comments = @comments || []

    # An even cleaner approach, which does the same thing using the conditional assignment operator.
    # @comments ||= []
    if @comments
      @comments
    else
      @comments = []
    end
  end

  def add_comment(comment)
    # This gets an empty list if it's never been asigned to, or the existing list if it has been assigned to.
    comments << comment
  end
end

class Clip
  def play
    puts "Playing #{object_id}"
  end
end

class Photo
  include AcceptsComments
  def initialize
    @format = "Jpeg"
  end
  def show
    puts "Displaying #{object_id}"
  end
end

class Video < Clip
  # Here I'm importing the module as a mixin.
  include AcceptsComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")
puts video.play

song = Song.new
song.add_comment("Awesome beat.")
puts song.play

photo = Photo.new
photo.add_comment("Beautiful colors.")
puts photo.show

p video.comments, song.comments, photo.comments
