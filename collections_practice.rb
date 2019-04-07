require 'pry'

def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
  end

def contain_a(array)
  a_words = []
  array.each do |word|
    if word.include? "a"
      a_words << word
    end
  end
  a_words
end

def first_wa(array)
  array.find {|word| word[0..1] == "wa"}
end

# def remove_non_strings(array)
# array.map {|item| array.delete(item) if item.is_a?(String) == false} #instance_of?
# array
# end

def remove_non_strings(array)
strings_array = []
array.map do|item|
  if item.is_a?(String)
    strings_array << item
  end
end
strings_array
end

def count_elements(array)
  elements = []
array.group_by(&:itself).collect do |key,value|
  key[:count] = value.length
  elements << key
end
return elements
end

# def merge_data(array1, array2)
#   (array1 << array2).flatten!
# end

def merge_data(key, data)
  data[0].values.map.with_index do |value, index|
    key[index].merge(value)
  end
end

def find_cool(array)
 coolness = []
   array.select do |hash|
    coolness << hash if hash.has_value? "cool"
  end
end


def organize_schools(schools)
  locations = {}
  schools.collect {|key,value|
    locations[value[:location]] = []}
      locations.each {|k,v|
        schools.each {|k1,v1|
          if k == v1[:location]
          then v << k1
        end}}
end
