def nyc_pigeon_organizer(data)
#   organized = {}	  organized = {}
 #   data.each do |trait, options|	  data.each do |trait, options|
#     options.each do |option, pigeons|	    options.each do |option, pigeons|
#       pigeons.each do |pigeon|	      pigeons.each do |pigeon|
#         organized[pigeon] ||= {}	        organized[pigeon] ||= {}
#         organized[pigeon][trait] ||= ''	        organized[pigeon][trait] ||= ''
#         if organized[pigeon][trait].size > 0	        if organized[pigeon][trait].size > 0
#           organized[pigeon][trait] = organized[pigeon][trait].split << option.to_s	          organized[pigeon][trait] = (organized[pigeon][trait].split << option.to_s).flatten
#         else	        else
#           organized[pigeon][trait] = option.to_s	          organized[pigeon][trait] = option.to_s
#         end	        end
#       end	      end
#     end	    end
#   end	
 #   organized	    array = false
# end 	    organized.keys.each do |pigeon, traits|
      if organized[pigeon][trait].is_a?(Array)
        array = true
      end
    end
     if array
      organized.each do |pigeon, traits|
        if !organized[pigeon][trait].is_a?(Array)
          organized[pigeon][trait] = [organized[pigeon][trait]]
        end
      end
    end
   end
   organized
end 
