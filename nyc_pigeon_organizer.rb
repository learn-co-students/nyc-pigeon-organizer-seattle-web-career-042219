def nyc_pigeon_organizer(data)
  org_hash = {}
  data.each do |attr_name, attr_hash|
    attr_hash.each do |attribute, pigeon_array|
      pigeon_array.each do |pigeon|
        org_hash[pigeon] = {} if org_hash[pigeon] == nil
        org_hash[pigeon][attr_name] = [] if org_hash[pigeon][attr_name] == nil
        org_hash[pigeon][attr_name].push(attribute.to_s)
      end
    end
  end
  return org_hash
end
