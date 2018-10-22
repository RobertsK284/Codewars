=begin
Assume '#' is like backspace in string. This means that string "a#bc#d" actually is "bd"

"abc#d##c" is "ac"

"abc####d##c#" is ""

"abc##d######" is ""

"######" is ""

"" is ""

Your task is to process string with '#' symbols
=end


# attempt with change to array and deleting at index
def clean_string(string)
  array = string.split(//)

  while array.index("#")
    array.delete_at(array.index("#") - 1) if array.index("#") != 0    
    array.delete_at(array.index("#"))
  end
  
  return array.join  
end

clean_string("abc####d##c#")


