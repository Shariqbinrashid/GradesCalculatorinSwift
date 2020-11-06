import Swift
import Foundation

//user promt code
// Taking input for file name
//print("Please Enter your File name which contains the records of student grades ", terminator: ".")
//let file=readLine()
/*
if let filepath = Bundle.main.path(forResource:file, ofType: "dat") {

} 

else {
    // example.txt not found!
       print("no file exist")
} */

class student{
  private var studentId: String
  private var claMarks: Int=0 
  private var olaMarks: Int=0 
  private var quizMarks: Int=0 
  private var examMarks: Int=0
  private var finalExamMarks: Int=0
  private var grade: String=""
   init() {
      self.studentId=""
      self.claMarks=0
      self.olaMarks=0
      self.quizMarks=0
      self.examMarks=0
      self.finalExamMarks=0
   
   }
  init(studentId: String, claMarks: Int,olaMarks: Int,quizMarks: Int, examMarks: Int,finalExamMarks: Int) {
      self.studentId = studentId
      self.claMarks = claMarks
      self.olaMarks = olaMarks
      self.quizMarks=quizMarks
      self.examMarks = examMarks
      self.finalExamMarks = finalExamMarks
   
   }
   //getter and setters
func getStudentId()-> String {
  return studentId
}
func setStudentId(studentId: String) {
  self.studentId=studentId
}

func getclaMarks()-> Int {
  return claMarks
}
func setclaMarks(claMarks: Int) {
  self.claMarks=claMarks
}

func getolaMarks()-> Int {
  return olaMarks
}
func setolaMarks(olaMarks: Int) {
  self.olaMarks=olaMarks
}

func getquizMarks()-> Int {
  return quizMarks
}
func setquizMarks(quizMarks: Int) {
  self.quizMarks=quizMarks
}


func getexamMarks()-> Int {
  return examMarks
}
func setexamMarks(examMarks: Int) {
  self.examMarks=examMarks
}
func getfinalExamMarks()-> Int {
  return finalExamMarks
}
func setfinalExamMarks(finalExamMarks: Int) {
  self.finalExamMarks=finalExamMarks
}
func getGrade()-> String {
  return grade
}
func setGrade(grade: String) {
  self.grade=grade
}
}

