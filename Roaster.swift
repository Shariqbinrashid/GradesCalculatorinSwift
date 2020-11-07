class Roaster{
  var objects = [student]()
  
//Grade function
func grade(s: student)-> String{
var grd:String=" "
var total:Int=0

 total=s.getclaMarks()+s.getolaMarks()+s.getquizMarks()+s.getexamMarks()+s.getfinalExamMarks()
if total>=90
  {
    grd="A"
  }
else if total<90  &&   total>=87
  {
    grd="B+"
  }
else if total<87  &&   total>=83
  {
    grd="B"
  }
else if total<83  &&   total>=80
  {
    grd="B-"
  }
else if total<80  &&   total>=77
  {
    grd="C+"
  }
else if total<77  &&   total>=73
  {
    grd="C"
  }
else if total<73  &&   total>=70
  {
    grd="C-"
  }
else if total<70  &&   total>=67
  {
    grd="D+"
  }
else if total<67  &&   total>=63
  {
    grd="D"
  }
else if total<63  &&   total>=60
  {
    grd="D-"
  }
else if total<60
  {
    grd="F"
  }
s.setGrade(grade:grd);
return grd
}

//CLA Average function
func claAverage()-> Float{
var avg:Float=0
var sum:Int=0
var s=student()

for (j,_) in objects.enumerated(){
  
 s=objects[j]
 sum=sum+s.getclaMarks()
}
avg=Float(sum)/Float(objects.count)

return avg
}

//OLA Average function
func olaAverage()-> Float{
var avg:Float=0
var sum:Int=0
var s=student()

for (j,_) in objects.enumerated(){
  
 s=objects[j]
 sum=sum+s.getolaMarks()
}
avg=Float(sum)/Float(objects.count)

return avg
}

//Quiz Average function
func quizAverage()-> Float{
var avg:Float=0
var sum:Int=0
var s=student()

for (j,_) in objects.enumerated(){
  
 s=objects[j]
 sum=sum+s.getquizMarks()
}
avg=Float(sum)/Float(objects.count)

return avg
}
//Exam Average function
func examAverage()-> Float{
var avg:Float=0
var sum:Int=0
var s=student()

for (j,_) in objects.enumerated(){
  
 s=objects[j]
 sum=sum+s.getexamMarks()
}
avg=Float(sum)/Float(objects.count)

return avg
}

//Final Exam Average function
func finalExamAverage()-> Float{
var avg:Float=0
var sum:Int=0
var s=student()

for (j,_) in objects.enumerated(){
  
 s=objects[j]
 sum=sum+s.getfinalExamMarks()
}
avg=Float(sum)/Float(objects.count)

return avg
}

//CLA HIGHEST function
func claHighest()-> Int{

var s=student()
 var a = [Int]()
for (j,_) in objects.enumerated(){
  
 s=objects[j]
 a.append(s.getclaMarks())
}

return a.max()!
}

//OLA HIGHEST function
func olaHighest()-> Int{

var s=student()
 var a = [Int]()
for (j,_) in objects.enumerated(){
  
 s=objects[j]
 a.append(s.getolaMarks())
}

return a.max()!
}

//Quiz HIGHEST function
func quizHighest()-> Int{

var s=student()
 var a = [Int]()
for (j,_) in objects.enumerated(){
  
 s=objects[j]
 a.append(s.getquizMarks())
}

return a.max()!
}

//Exam HIGHEST function
func examHighest()-> Int{

var s=student()
 var a = [Int]()
for (j,_) in objects.enumerated(){
  
 s=objects[j]
 a.append(s.getexamMarks())
}

return a.max()!
}
//Final Exam HIGHEST function
func finalExamHighest()-> Int{

var s=student()
 var a = [Int]()
for (j,_) in objects.enumerated(){
  
 s=objects[j]
 a.append(s.getfinalExamMarks())
}

return a.max()!
}





func result(){
      
 var s=student()
 s=objects[16]
     grade(s:s)
     print(s.getStudentId(),s.getGrade())
   
  }
}

