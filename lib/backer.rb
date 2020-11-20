class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backers = ProjectBacker.all.select do | pbobject |
            pbobject.backer == self
        end
        
        backers.map do | back_proj |
            #if back_proj.backer == self
                back_proj.project
            #end
        end
    end
end