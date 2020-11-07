
import Swift
import Foundation


let r=Roaster()

func readinfFromFile() {  
  //local variables
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
let lines = contents.split(separator:"\n") //splitting rows seperated by \n
for line in lines {
    print("\(line) ")
    if line.range(of:"C#000000") != nil{

    }
    else{
   let rows = line.split(separator:",")//splitting row seperated by ,
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
r.objects.append(s[j]) //storing runtime objects in objects array of roasters
j+=1
    }
 
}



}

func OutputFromFile() {  
  //local variables

var s:student 
var studentIdx: String
var claMarksx: Int=0 
var olaMarksx: Int=0 
var quizMarksx: Int=0 
var examMarksx: Int=0
var finalExamMarksx: Int=0
var data = [String]()
//reading from file
// Determine the file name
let filename = "student.dat"

// Read the contents of the specified file

let contents = try! String(contentsOfFile: filename)

// Split the file into separate lines
let lines = contents.split(separator:"\n") //splitting rows seperated by \n
for line in lines {
    print("\(line) ", terminator: " ")
      if line.range(of:"C#000000") != nil{
      print("")
    }
   else{
     
 let rows = line.split(separator:",")//splitting row seperated by ,
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

s=student(studentId:studentIdx,claMarks:claMarksx,olaMarks:olaMarksx,quizMarks:quizMarksx,examMarks:examMarksx,finalExamMarks:finalExamMarksx)
print("GRADE: ",r.grade(s:s))

   }
}



}
print("Input File students.dat")
readinfFromFile()

print("\n Output File")
OutputFromFile()

print("Average ",String(format: "%.1f", r.claAverage()),String(format: "%.1f", r.olaAverage()),String(format: "%.1f", r.quizAverage()),String(format: "%.1f", r.examAverage()),String(format: "%.1f", r.finalExamAverage()))

print("Highest ",r.claHighest(),r.olaHighest(),r.quizHighest(),r.examHighest(),r.examHighest())


//print(String(format: "%.1f", r.olaAverage()))