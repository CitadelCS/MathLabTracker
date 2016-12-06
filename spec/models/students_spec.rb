require 'rails_helper'

# RSpec.describe Student, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end


require 'rails_helper'
# describe Student do
#     describe "#search" do
#         it "should find a student" do
#             student = Student.create! :CWID => "1234"
#             expect(student.search).to include(student)
#         end
#     end
# end

describe Students do
    describe "#getClasses" do
    
        it "should return the classes for a student taking a single class" do
            student = Students.create! :classes => "MATH131", :CWID => 10527150
            expect(student.getClasses(10527150)).to eq(["MATH131"])
        end
        
        it "should return an array of classes if a student is taking multiple classes" do
            student = Students.create! :CWID => 10527150, :classes => "MATH131,MATH206"
            expect(student.getClasses(10527150)).to eq(["MATH131","MATH206"])
        end
        
        it "should return an empty array for a student without classes" do 
            student = Students.create! :CWID => 10527150
            expect(student.getClasses(10527150)).to eq([])
        end
    
    end
end
    