class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name
    self.name
  end

  def artist_name=(name)
    if name != "" && name != nil
      self.name = name
      self.save
    else

    end
  end
end
