class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do | pb_object |
            pb_object.project == self   
        end

        project_backers.map do | my_backers | 
            my_backers.backer
        end
    end
end