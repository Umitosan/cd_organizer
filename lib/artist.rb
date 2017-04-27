class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @album_list = []
    @id = @@artists.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:list_all) do
    @@artists
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_method(:albums) do
    @album_list
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_artist = nil
    @@artists.each do |artist|
      if artist.id().eql?(id)
        found_artist = artist
      end
    end
    found_artist
  end

end
