def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  pigeon_list = {}

  pigeon_data.each do |label, atts|
  	atts.each do |att, birds|
  		birds.each do |bird|
  			pigeon_list[bird] ||= {}
  			pigeon_list[bird][label] ||= []
  			pigeon_list[bird][label] << att.to_s
		end
	end
  end
  pigeon_list
end