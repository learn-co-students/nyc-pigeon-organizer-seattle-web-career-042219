def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each { |property, hash|
    hash.each { |attribute, array|
      array.each { |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      }
    }
  }
  return new_hash
end
