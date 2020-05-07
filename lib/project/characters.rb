class Characters
    attr_accessor :name, :species, :origin

    @@all=[]
    def initialize (name, species, origin)
        @name = name 
        @species = species
        @origin = origin

        @@all << self
    end

    def self.all 
        @@all
    end
    # binding.pry
    def self.destroy_all
        @@all.clear
    end
   
    def self.create(name, species, origin)
        character = self.new(name, species, origin)
        character
     end

    def self.find_by_name(name, species = nil, origin = nil)
        all.find do |character| 
            if character.name == name
                puts "#{character.name}, #{character.species}, #{character.origin}"
            end
        end 
    end
    
     def self.find_or_create_by_name(name, species = nil, origin = nil)
         self.find_by_name(name) || self.create(name, species, origin)


    #     end
    
#     def self.select_by_name

     end
end

#responsible for making objects out of whtever info is received from API