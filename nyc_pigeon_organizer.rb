def nyc_pigeon_organizer(pigeon_data)
  new_hash = {}

  pigeon_data.each {|attribute, detail|
   #puts detail
    detail.each {|item, info|
    #puts item
      info.each {|name|
        new_hash[name] = {:color => [], :gender => [], :lives => []}
      }
    }
  }

#  new_hash.each {|name, attribute|
#    attribute.each {|detail, info|

#    }
#  }
  x = new_hash.keys
  pigeon_data[:color].each { |bird_color, name|
    name.each { |bird_name|
      x.each { |item|
        if bird_name === item
          new_hash[item][:color] << bird_color.to_s
        end
      }
    }
  }

  pigeon_data[:gender].each { |bird_gender, name|
    name.each {|bird_name|
      x.each {|item|
        if bird_name == item
          new_hash[item][:gender] << bird_gender.to_s
          #puts name
        end
      }
    }
  }

  pigeon_data[:lives].each {|bird_lives, name|
    name.each {|bird_name|
      x.each {|item|
        if bird_name == item
        new_hash[item][:lives] << bird_lives.to_s
        end
      }
    }
  }
  return new_hash
end
