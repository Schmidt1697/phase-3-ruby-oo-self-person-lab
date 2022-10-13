# your code goes here

require "pry"

class Person

    # @@friend = []

    # def Person.friend
    #     @@friend
    # end
    #need to be able to see the name, happiness, hygiene
    #do not want to change name, only read
    #need specific setter methods for happiness and hygiene
    attr_reader :name, :happiness, :hygiene
    #bank_account does not need any special parameters to update the value
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        
        # @@friend << self
    end

    #setter for happiness (must be between 0-10)
    def happiness=(value)
            if value < 0
                @happiness = 0
            elsif value > 10
                @happiness = 10
            else
                @happiness = value
            end
        end
    
    #setter for hygiene
    def hygiene=(value)
        if value < 0
            @hygiene = 0
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = value
        end
    end

    #clean instance method that returns true or false (boolean method)
    #can use ? at the end for these
    #use self to refer to hygiene r/t thre is also a hygiene setter method so must actually write self
    def clean?
        self.hygiene > 7
    end
    #this below clean method works, however it does not pass the test
    # def clean?
    #     if @hygiene > 7
    #         true
    #     else 
    #         false
    #     end   
    # end

    #another boolean method for happiness
    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
       "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

# Sara = Person.new('Sara')
# John = Person.new('John')

 
# binding.pry