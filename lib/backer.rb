class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backers = ProjectBacker.all.select do | pb_object |
            pb_object.backer == self
        end

        backers.map do | my_projects |
            #if back_proj.backer == self
                my_projects.project
            #end
        end
    end
end