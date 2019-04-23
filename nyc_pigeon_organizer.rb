require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, hash|
    hash.each do |type, arr|
      arr.each do |name|
        if !pigeon_list.include?(name)
          pigeon_list[name] = {}
        end
        if pigeon_list[name][attribute] == nil
          pigeon_list[name][attribute] = []
        end
        pigeon_list[name][attribute].push(type.to_s)
      end
    end
  end
 pigeon_list
end
