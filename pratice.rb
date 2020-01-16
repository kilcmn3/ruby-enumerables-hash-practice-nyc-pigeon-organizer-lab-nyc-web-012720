pigeon_data = {
 :color => {
   :purple => ["Theo", "Peter Jr.", "Lucky"],
   :grey => ["Theo", "Peter Jr.", "Ms. K"],
   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
   :brown => ["Queenie", "Alex"]
 },
 :gender => {
   :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
   :female => ["Queenie", "Ms. K"]
 },
 :lives => {
   "Subway" => ["Theo", "Queenie"],
   "Central Park" => ["Alex", "Ms. K", "Lucky"],
   "Library" => ["Peter Jr."],
   "City Hall" => ["Andrew"]
 }
}



def search_in_list(name_pigeon, category_pigeon)
  new_array = []
  new_hash = {}
  category_pigeon.each do |key, value|
      if value.include?(name_pigeon) == true

              s = "#{key}"
              new_array.push(s)
            else
              nil
            end
  end
pp  new_array
end
search_in_list("Alex", pigeon_data[:color])
 search_in_list("Theo", pigeon_data[:color])
 search_in_list("Peter Jr.", pigeon_data[:color])
 search_in_list("Andrew", pigeon_data[:color])
