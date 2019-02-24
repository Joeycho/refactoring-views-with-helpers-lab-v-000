class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    if name != "" && name != nil
      self.artist.name = name
      self.artist.save
    else
      errors.add(:artist_name, "The given name is not valid")
    end
  end
end
