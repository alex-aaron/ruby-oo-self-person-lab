# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    attr_accessor :bank_account

    def happiness=(happiness_index)
        if happiness_index > 10
            @happiness = 10
        elsif happiness_index < 0
            @happiness = 0
        else
            @happiness = happiness_index
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene_index)
        if hygiene_index > 10
            @hygiene = 10
        elsif hygiene_index < 0
            @hygiene = 0
        else
            @hygiene = hygiene_index
        end
    end

    def hygiene
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else 
            false 
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins" 
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(talker, topic)
        if topic == "politics"
            talker.happiness = talker.happiness - 2
            self.happiness = self.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            talker.happiness = talker.happiness + 1
            self.happiness = self.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end