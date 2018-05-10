class Backer

  attr_accessor :name, :backed_projects

  def initialize (name)
    @name = name
    @backed_projects = []
  end

  def back_projet (project)
    @backed_projects << project if !@backed_projects.include?(project)
    project.add_backer(self)
  end

end
