def nyc_pigeon_organizer(data)
  # write your code here!
  reordered_data = {}
  data.each { |key_data, color_gender_lives_hash|
    color_gender_lives_hash.each { |color_gender_lives, name_array|
      name_array.each { |name|
        if !reordered_data.has_key?(name)
          reordered_data[name] = {}
        end
        if !reordered_data[name].has_key?(key_data)
          reordered_data[name][key_data] = []
        end
        if !reordered_data[name][key_data].include?(color_gender_lives)
          reordered_data[name][key_data] << color_gender_lives.to_s
        end

      }
    }
  }
  return reordered_data
end
