class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    binding.pry
    if self.artist != nil
      self.artist.name
    else
      errors.add(:artist, "There is no artist for this song")
    end
  end

  def artist_name=(name)
    if name != "" && name != nil
      if self.artist != nil
        self.artist.name = name
        self.artist.save
      else
        artist = Artist.find_or_create_by(name: name)
      end
    else
      errors.add(:artist_name, "The given name is not valid")
    end
  end
end
