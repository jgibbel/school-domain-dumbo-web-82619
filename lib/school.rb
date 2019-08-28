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
    sorted=@roster.sort_by { |key| key }.to_h
    sorteder=sorted.each do |k,v| 
      v.sort_by {|x| x}
    end
    sorteder
  end

end 