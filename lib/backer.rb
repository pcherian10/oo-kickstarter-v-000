class Backer

  attr_accessor :name, :backed_projects

  def initialize (name)
    @name = name
    @backers = []
  end

  def add_backer (backer)
    @backers << backer if !@backers.include?(backer)
    backer.back_project(self)

  end

end
