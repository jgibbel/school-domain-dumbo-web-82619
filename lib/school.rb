# code here!
class School 
  attr_accessor :roster 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name 
    else 
       @roster[grade] = [name]
    end 
  end
  
  def grade(grade)
    @roster[grade]
  end 

  def sort
    sorted=@roster.sort_by { |key| key }
    sorted.each do |both|
      both[1] = both[1].sort
    end
    sorted.to_h
  end

end 