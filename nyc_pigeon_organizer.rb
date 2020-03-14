require 'pp'

def nyc_pigeon_organizer(data)

  newHash = {}
  data.each do |key,value|
  if value.is_a?(Hash)
    value.each do |k,v|
      v.each do |pigeonName|
        if !newHash.key?(pigeonName)
          newHash[pigeonName] = {}
        else
          newHash[pigeonName][key] = k.to_s
        end
      end
    end
  end
end
pp newHash
=begin
  pigeonNamesM = []
  pigeonNamesF = []
  
  pigeonNamesM << data[:gender][:male]
  pigeonNamesF << data[:gender][:female]
  
  pigeonNamesM = pigeonNamesM.flatten
  pigeonNamesF = pigeonNamesF.flatten
  
  pigeonNamesArray = pigeonNamesM + pigeonNamesF
  
  pigeonHash = {}

# gathering just the core attribute titles
attributesArray = []
data.each_key do |key| 
  attributesArray << key
end

pigeonHashTwo = {}
pigeonHashTwo = attributesArray.each_with_index.to_h

#puts "This is in pigeonHashTwo:"
#pp pigeonHashTwo


# add the attribute symbols to each bird name
  pigeonNamesArray.each do |n|
    pigeonHash[n] = pigeonHashTwo.clone
  end
  
  puts "pigeonHash is now:"
  pp pigeonHash
  
# add the colors to the bird name's attribute's value
  if data[:color][:purple].include?("Theo")
    pigeonHash["Theo"][:color] = ["Purple"]
     pigeonHash["Alex"][:color] = ["No"]
  end

# loop through data and note I just changed each to collect to try to get a return value
pigeonHash.collect do |name, info|
  info.collect do |attribute|
    data.collect do |key, value|
      value.collect do |key1, value1|
        value1.collect do |value2|
          if value2 == name
            attribute = value2
            # puts attribute
          end
        end
      end
    end
  end
end
=end
end
