def nyc_pigeon_organizer(data)
   data.inject({}) do |memo, trait_array|
     trait_array[1].each do |option, pigeons|
       pigeons.each do |pigeon|
         memo[pigeon] ||= {}
         if trait_array[0] == :color
           memo[pigeon][trait_array[0]] ||= []
           memo[pigeon][trait_array[0]] << option.to_s
         else
           memo[pigeon][trait_array[0]] = option.to_s
         end
       end
     end
     memo
   end
# end
