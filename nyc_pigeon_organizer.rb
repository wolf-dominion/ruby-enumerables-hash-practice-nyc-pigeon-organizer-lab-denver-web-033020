require 'pp'

def nyc_pigeon_organizer(data)
  
  pigeonList = {}
  

  data.each do |key, value| # loop through top most hash, retreives the keys and values
    value.each do |subkey, array| # loop through secondary hash, retreives the arrays
      array.each do |name|
        
        # check if the name exists in pigeonList
        if !pigeonList.key?(name)
          pigeonList[name] = {}
        end
        
        # check if the current main attribute(ex. color) is in the pigeonList's bird hash (the hash within a hash)
        
        if !pigeonList[name].key?(key)
          pigeonList[name][key] = []
        pigeonList[name][key] << subkey.to_s
        
      end
    end
  end


  
end