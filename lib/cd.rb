class Cd
  @@cds = []

  define_method(:initialize) do |title|
    @title = title
    @artist = ""
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
end
