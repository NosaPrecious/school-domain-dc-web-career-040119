require 'pry'

# code here!
class School
  
  attr_reader :name, :roster
  def initialize(name)
    @name= name
     @roster= {}
  end
  
  def roster
    @roster
  end 
  
  def add_student(name, grade)
      if @roster.size == 0
      @roster[grade]= []
      @roster[grade] << name
      else
        if @roster.has_key?(grade)
         @roster[grade].push(name)
       else
           @roster[grade] = []
           @roster[grade] << name
          #binding.pry
       end
      end
  end
  
  def grade(level)
    @roster[level]
  end
  
  def sort
    sorted_student_hash= @roster.map do |grade, name|
      name.sort!
    end
    
    sorted_student_hash
    binding.pry
  end
  
end 
#end of school class.