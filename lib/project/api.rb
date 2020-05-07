class API

    def self.get_characters
        url="https://rickandmortyapi.com/api/character/"
        # binding.pry
        response = Net::HTTP.get(URI(url))
        characters = JSON.parse(response)["results"]
       
        characters.each do |details|
          Characters.find_or_create_by_name(details["name"], details["species"], details["origin"]["name"])
           end
    end
       
end
