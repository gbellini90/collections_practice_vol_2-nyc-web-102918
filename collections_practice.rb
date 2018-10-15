def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
  word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.keep_if do |element|
    element.is_a?(String)
  end
end

def count_elements(array)
  array.uniq.collect do |element|
    element[:count] = array.count(element)
    element
  end
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

def organize_schools(schools)
  new_hash = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if new_hash[location] == nil
          new_hash[location] = [school]
        else
          new_hash[location] << school
        end
      end
    end
    new_hash
end
