class Cd
  @@cds = []

  define_method(:initialize) do |title|
    @title = title
    @artist = ""
    @id = @@cds.length.+(1)
  end

  define_method(:title) do
    @title
  end

  define_singleton_method(:list_all) do
    @@cds
  end

  define_method(:save) do
    @@cds.push(self)
  end

  define_singleton_method(:clear) do
    @@cds = []
  end

  define_method(:id) do
    @id
  end

end
