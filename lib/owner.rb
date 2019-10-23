class Owner
    def create_org
    end

    def add_people
    end

    def invite_people
    end

    def invite_link
        [true]
    end

    def add_to_org(user)
        if (user != '')
            return [true, 'user is added to the org']
        end
    end
end