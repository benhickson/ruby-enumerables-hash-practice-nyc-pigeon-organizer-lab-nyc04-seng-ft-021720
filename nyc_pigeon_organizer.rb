def nyc_pigeon_organizer(data)
#   # p data


  # names = {}
  
  
  # data.each do |key1, value1|       #loop the attributes
  #   attribute = key1
  #   value1.each do |key2, value2|    #loop the values
  #     value = key2
  #     value2.each do |name|
  #       # names[name][attribute.to_sym] << value.to_s
  #       names[name][attribute.to_sym].push(value.to_s)
  #     end
  #   end
  # end
  
  # names




  names_array = []
  output_hash = {}

  data.each do |attribute, items|
    items.each do |feature, arr|
      arr.each do |name|
        names_array << name if !names_array.include?(name)
      end
    end
  end
  
  names_array.each do |name_from_namearray|
    output_hash[name_from_namearray] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      output_hash[name_from_namearray][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          output_hash[name][attribute] << feature.to_s if name == name_from_namearray
        end
      end
    end
  end
  
  output_hash
  
end
