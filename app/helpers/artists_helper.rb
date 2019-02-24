module ArtistsHelper
  def display_artist(artist, song)
    if artist == nil
      link_to "Add Artist", edit_song_path(song)
    else
      link_to song.artist_name, artist_path(song.artist)
    end
  end
end
