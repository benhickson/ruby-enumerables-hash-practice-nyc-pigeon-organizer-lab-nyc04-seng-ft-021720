# def nyc_pigeon_organizer(data)
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
  
#   name_array = []
  
#   data.each do |descriptor, categories|
#     categories.each do |category, namelist|
#       namelist.each do |name|
#         name_array << name if !name_array.include?(name)
#       end
#     end
#   end
  
#   name_array.each do |name_in_array|
#     names[name_in_array] = Hash.new {|k, v| k[v] = []}    #whats this
#     data.each do |descriptor, categories|
#       names[name_in_array][descriptor]
#       categories.each do |categories, namelist|
#         namelist.each do |name|
#           names[name][attribute] << feature.to_s if name == name_in_array
#         end
#       end
#     end
#   end
  
#   names
# end

def nyc_pigeon_organizer(data)

  names = []
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
