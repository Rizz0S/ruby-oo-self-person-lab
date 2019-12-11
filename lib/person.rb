# your code goes here


class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        max = 10
        min = 0
        @happiness = happiness
        if @happiness> max
            return @happiness = 10
        elsif @happiness < min
            return @happiness = 0
        end
        @happiness
    end

    def hygiene=(hygiene)
        max = 10
        min = 0
        @hygiene = hygiene
        if @hygiene > max
            return @hygiene = 10
        elsif @hygiene  < min
            return @hygiene = 0
        end
        @hygiene
        
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid (salary)
        self.bank_account += salary
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

    def call_friend (friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic) 
        if topic == "politics" 
            self.happiness -= 2
            person.happiness -= 2
            return  "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        end
        "blah blah blah blah blah"
    end

end
















