class Students < ActiveRecord::Base
    
  def self.search(cwid)
        Student.where(cwid: cwid).take
    end

  def self.all_professors
    %w(Florez, Moore, Trautman, Rudolph, Verdicchio)
  end
  # def self.search
  #       # @student = Student.where(cwid: @cwid).take
  # end
  # def self.login
  #     @count = self.count
  #   @count = @count + 1
  #   self.count = @count
  # end
  
  # Adding a method to get classes that a student is registered
  def getClasses(cwid)
    classes = Students.where(CWID: cwid).limit(1).pluck(:classes)
    
    #check the first item of the results to see if nil or if contains comma's
    #If it contains commas split to actual array
    
    if classes[0].nil?
      return []
    elsif classes[0].include?(',')
      return classes[0].split(',')
    end
    
    return classes
  end

end
