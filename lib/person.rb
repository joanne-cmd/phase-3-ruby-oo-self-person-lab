# your code goes here
class Person
    attr_reader :name 
    attr_accessor  :bank_account
    def initialize( name, bank_account = 25, happiness = 8, hygiene = 8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end
   def happiness=(value)
    
        if value>10
            @happiness=10
        elsif value<0  
            @happiness=0
        else
            @happiness=value
        end
    end

   def happiness
    @happiness
   end

   def hygiene=(value)
    if value>10
        @hygiene=10
    elsif value<0
        @hygiene=0
    else
            @hygiene=value
    end
   end

   def hygiene
    @hygiene
   end

   def happy?
    @happiness>7
   end
   def clean?
    @hygiene>7
   end
   def get_paid amount
    @bank_account+=amount
     "all about the benjamins"
   end

   def take_bath 
    cleaner= 4
   self.hygiene= (cleaner+hygiene)
    '♪ Rub-a-dub just relaxing in the tub ♫'
   end
   def work_out
    dirtier= 3

    self.hygiene= ( hygiene - dirtier)

    self.happiness =(happiness + 2)
    '♪ another one bites the dust ♫'

   end

   def call_friend(friend)
    friend.happiness= (friend.happiness + 3)
    self.happiness =(happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
   end
   
   def start_conversation(person, topic)
        if(topic == "politics")
            self.happiness= (happiness-2) 
            person.happiness= (person.happiness- 2)
            return "blah blah partisan blah lobbyist" 
         elsif topic == "weather"
            self.happiness= (happiness+1)
            person.happiness=(person.happiness+1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
   end
    
end
