def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value| #key = :color #value = :purple => []
    value.each do |item, array| #item = :purple , array = []
      array.each do |name|
        if pigeon_list.key?(name)
          if !pigeon_list[name].key?(key)
            pigeon_list[name][key] = []
          end
          #pigeon_list[name][key] << item.to_s
        else 
          pigeon_list[name] = {}
          pigeon_list[name][key] = []
        end
        pigeon_list[name][key] << item.to_s
      end
    end
  end
  pigeon_list
end