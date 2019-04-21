require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}

    data.each do |key, value|
      value.each do |key2, value2|
        value2.each do |name|
          new_hash[name] = {}
        end
      end
    end

    data.each do |key, value|
      value.each do |key2, value2|
        new_hash.each do |name, category|
          category[key] = []
        end
      end
    end

    data.each do |key, value|
      value.each do |key2, value2|
        new_hash.each do |name, category|
          if value2.include?(name)
            category[key] << key2.to_s
          end
        end
      end
    end

    new_hash
  end
