def nyc_pigeon_organizer(data)
#   organized = {}	  organized = {}
 #   data.each do |trait, options|	  data.each do |trait, options|
#     options.each do |option, pigeons|	    options.each do |option, pigeons|
#       pigeons.each do |pigeon|	      pigeons.each do |pigeon|
#         organized[pigeon] ||= {}	        organized[pigeon] ||= {}
#         if trait == :gender || trait == :lives	        organized[pigeon][trait] ||= []
#           organized[pigeon][trait] = option.to_s	        organized[pigeon][trait] << option.to_s
#         else	      end
#           organized[pigeon][trait] ||= []	    end
#           organized[pigeon][trait] << option.to_s	  end
#         end	
#       end	
#     end	
#   end	
 #   organized	  organized
# end	end