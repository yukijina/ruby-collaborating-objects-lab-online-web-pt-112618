class Song   
  attr_accessor :name, :artist
  
  def initialize(name) 
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0] 
    song_name =  filename.split(" - ")[1]  

    song = Song.new
    song.artist_name = artist_name
    song
    
  end 
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name) 
    self.artist = artist
    artist.add_song(song)
    #artist.save
    #artist.all
  end
  
  
  
end 