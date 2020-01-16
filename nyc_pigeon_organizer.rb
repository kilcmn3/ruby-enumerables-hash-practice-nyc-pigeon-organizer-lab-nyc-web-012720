require "pp"


def search_in_list(name_pigeon, category_pigeon)
  new_array = []

  category_pigeon.each do |key, value|
      if value.include?(name_pigeon) == true
              s = "#{key}"
              new_array.push(s)
            else
              nil
            end
  end
  new_array
end

def nyc_pigeon_organizer(data)
  # write your code here!
  name_pigeon = data[:gender][:male] + data[:gender][:female]
  pigeon_list =  Hash.new
  i = 0
      while i < name_pigeon.length do
        keys_collect = Hash[data.collect{|key, value| [key, value.default = 0]}]
        pigeon_list[name_pigeon[i]] = keys_collect
        pp pigeon_list
          if pigeon_list[name_pigeon[i]][:color] == 0
            pigeon_list[name_pigeon[i]][:color] = search_in_list(name_pigeon[i], data[:color])
          end
          i += 1
      end
end
