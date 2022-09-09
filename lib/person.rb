class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        if num > 10 
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else 
            @happiness = num
        end
    end

    def hygiene=(num)
        if num > 10 
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else 
            @hygiene = num
        end
    end


    def happy?
        if self.happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        if self.hygiene >= 6
            self.hygiene = 10
        else
            self.hygiene = (@hygiene + 4 )
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        if self.hygiene < 3
            self.hygiene = 0
        else
            self.hygiene -= 3
        end

        if self.happiness >= 8
            self.happiness = 10
        else
            self.happiness = @happiness + 2
        end
        "♪ another one bites the dust ♫"
    end








end
