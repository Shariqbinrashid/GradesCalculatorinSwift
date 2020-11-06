
import Swift
import Foundation


let r=Roaster()

func readinfFromFile() {
var i:Int=0   
var j:Int=0 
var data = [String]()
var s = [student]()

var studentIdx: String
var claMarksx: Int=0 
var olaMarksx: Int=0 
var quizMarksx: Int=0 
var examMarksx: Int=0
var finalExamMarksx: Int=0


//reading from file
// Determine the file name
let filename = "student.dat"

// Read the contents of the specified file

let contents = try! String(contentsOfFile: filename)

// Split the file into separate lines
let lines = contents.split(separator:"\n")
for line in lines {
   // print("\(line) ")
    let rows = line.split(separator:",")
   data.removeAll()
    for  row in rows{
     // print("\(row) ")
      
      data.append(String(row))
      
      

    }
studentIdx=String(data[0])
claMarksx=Int(data[1])!
olaMarksx=Int(data[2])!
quizMarksx=Int(data[3])!
examMarksx=Int(data[4])!
finalExamMarksx=Int(data[5])!

s.append(student(studentId:studentIdx,claMarks:claMarksx,olaMarks:olaMarksx,quizMarks:quizMarksx,examMarks:examMarksx,finalExamMarks:finalExamMarksx))
r.objects.append(s[j])
j+=1
}

/*
for(int i=0;i<n;++i)
{
// Create Object
   let  s[i]=student(studentId:12222,claMarks:10,olaMarks:10,quizMarks:10,examMarks:20,finalExamMarks:30) 
}*/

}


/*

let s1=student(studentId:"12222",claMarks:10,olaMarks:10,quizMarks:10,examMarks:20,finalExamMarks:30)

print(s1.getStudentId())
s1.setStudentId(studentId:"yar")
print(s1.getStudentId())

*/
readinfFromFile()
r.result()
