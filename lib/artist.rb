class Artist  
  attr_accessor :name, :songs
  
  @@all = []

  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def add_song(song) 
    @songs << song
    song.artist = self
  end 
  
  def self.all
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.find_or_create_by_name(name) 
    if  self.all.detect {|artist| artist.name == name} 
    else 
      artist = Artist.new(name)
      artist.name = name
      artist
    end
  end 
  
  def print_songs 
    self.songs.each {|song| puts song.name} 
  end 
  
end 