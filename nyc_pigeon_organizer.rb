def nyc_pigeon_organizer(data)
#   # p data
#   names = {}
  
  
#   # data.each do |key1, value1|       #loop the attributes
#   #   attribute = key1
#   #   value1.each do |key2, value2|    #loop the values
#   #     value = key2
#   #     value2.each do |name|
#   #       if names[name] && names[name][attribute.to_sym]
#   #         names[name][attribute.to_sym].push(value.to_s)
#   #       else
#   #         names[name] = {attribute.to_sym => [value.to_s]}
#   #       end
#   #     end
#   #   end
#   # end
  
#   names
# end

  names_array = []
  pigeon_hash = {}

  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
  
  names.each do |nombre|
    pigeon_hash[nombre] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[nombre][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_hash[name][attribute] << feature.to_s if name == nombre
        end
      end
    end
  end
  
  pigeon_hash

end
