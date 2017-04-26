# require "cd"
# require "rspec"
# require "pry"
#
# describe(Cd) do
#
#   before() do
#     Cd.clear()
#   end
#
#   describe('#title') do
#    it("returns the title of the CD") do
#      test_cd = Cd.new("Graceland")
#      expect(test_cd.title()).to(eq("Graceland"))
#     end
#    end
#
#   describe('.list_all') do
#     it('returns an empty array of CDs') do
#     expect(Cd.list_all()).to(eq([]))
#     end
#   end
#
#   describe('#save') do
#     it("adds a cd to the array of saved CDs") do
#       test_cd =Cd.new("Graceland")
#       test_cd.save()
#       expect(Cd.list_all()).to(eq([test_cd]))
#     end
#   end
#
#   describe(".clear") do
#     it('empties out all of the saved CDs') do
#       Cd.new("Graceland").save()
#       Cd.clear()
#       expect(Cd.list_all()).to(eq([]))
#     end
#   end
# end
