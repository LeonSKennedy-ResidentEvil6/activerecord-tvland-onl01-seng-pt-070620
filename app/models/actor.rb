class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        self.first_name.concat(" " + self.last_name)
    end 

    def list_roles
        character = self.characters.collect { |character| character.name }
        show = self.shows.collect { |show| show.name }
        character_show = character.concat(show).join(" - ")
        character_show
    end 

end