class Cli
    def run
       input = " "
       API.get_characters
       while input != "exit"
           puts " "
           puts "Welcome to the Rick and Morty character app!"
           puts " "
           puts "To see a list of characters names, type 'names'"
           puts " "
           puts "To learn what a characters species and origin is type 'choose'"
           input = gets.strip.downcase
               case input
                   when  "names"
                   names(Characters.all)
                   when "choose"
                   choose(input)
               end 
           end 
       end 
       

   
   def names(character)
       puts "Here is a list of character names"
       puts " "
           Characters.all.each.with_index(1) do |character, index|
           puts "#{index}. #{character.name}"
           end
  
end 
     
       
           



      def choose(input)
           puts "Which character would you like to know more about?"
           input = gets.strip.to_s
               Characters.all.find do |character|
               if input == character.name
                   puts " "
                   puts "#{character.name}, #{character.origin}, #{character.species}"
               end 
           end 
       end 
end 
   
   