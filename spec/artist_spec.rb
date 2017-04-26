require "artist"
require "rspec"
require "pry"


describe(Artist) do

  before() do
    Artist.clear()
  end

  describe('#name') do
    it('returns the name of the artist') do
      test_artist = Artist.new("Paul Simon")
      expect(test_artist.name()).to(eq("Paul Simon"))
    end
  end

  describe('.list_all') do
    it('returns an empty array of artist') do
    expect(Artist.list_all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds an artist to the array of saved artist") do
      test_artist = Artist.new("Paul Simon")
      test_artist.save()
      expect(Artist.list_all()).to(eq([test_artist]))
    end
  end

  describe(".clear") do
    it('empties out all of the saved artists') do
      Artist.new("Paul Simon").save()
      Artist.clear()
      expect(Artist.list_all()).to(eq([]))
    end
  end

  describe("#albums") do
    it('returns an empty array of albums') do
      test_artist = Artist.new("Paul Simon")
      test_artist.save()
      expect(test_artist.albums()).to(eq([]))
    end
  end

end
