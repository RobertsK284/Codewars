=begin
Create a method find that accepts a list and a block, and returns the first item for which the block returns true. If no item in the list matches, return nil.
If you need help, here's a reference:
http://www.rubycuts.com/enum-detect

sample test:
describe "find" do
  list = [0,1,2,3,5,8,13]
  Test.assert_equals(find(list){|item| item.odd?}, 1, "1 is the first item in the list that is odd")
end

=end

def find list, &block
  list.each do |item|
    if block.call item
      return item
    end
  end
  return nil
end