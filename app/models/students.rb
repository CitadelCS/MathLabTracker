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
  def getClasses
    classes = Students.where("CWID = ?", self.CWID)
  end

end
