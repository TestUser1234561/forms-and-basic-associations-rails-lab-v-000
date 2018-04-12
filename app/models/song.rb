class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(name)
<<<<<<< HEAD
      genre = Genre.find_or_create_by(name: name)
      self.genre = genre
  end

  def genre_name
    byebug
    self.try(:genre).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def artist_name
      self.try(:artist).try(:name)
=======
    self.genre = Genre.find_or_create_by(name: name)
    byebug
  end

  def genre_name
    if self.genre
      self.genre.name
    end
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    if self.artist
      self.artist.name
    end
>>>>>>> 9e8b82941597ed0583812fdbcb166d7af8d9db64
  end

end
