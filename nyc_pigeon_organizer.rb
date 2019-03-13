require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!

name_array =  data.map do |attribute, attribute_hash|
    if attribute == :gender
      attribute_hash.map do |gender, name|
        name
      end
    end
  end.flatten.compact

pigeon_list = {}
third_hash = {}

  name_array.map do |name|
    second_hash = {}
    attribute_hash = data.map do |attribute, attribute_hash|
    detail_array = []

    attribute_hash.map do |detail, detail_name_array|
      if detail_name_array.include?(name)
      detail_array << detail.to_s
      end
    end
    first_hash = {attribute => detail_array}
    second_hash[attribute] = detail_array
  end
    third_hash[name] = second_hash

end
third_hash

end



#pigeon_data = {
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#    :female => ["Queenie", "Ms. K"]
#  },
#  :lives => {
#    "Subway" => ["Theo", "Queenie"],
#    "Central Park" => ["Alex", "Ms. K", "Lucky"],
#    "Library" => ["Peter Jr."],
#    "City Hall" => ["Andrew"]
#  }
#}
