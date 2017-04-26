class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @album_list = []
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

end
