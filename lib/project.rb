require 'pry'

class Project

  attr_accessor :title, :backers

  def initialize (title)
    @title = title
    @backers = []
  end

  def add_backer (backer)
    @backers << backer unless @backers.include? (backer)
    backer.back_project(self)
    binding.pry
  end

end
