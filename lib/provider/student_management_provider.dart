import 'package:aut_cse464_class_project/models/student_model.dart';

class StudentManagementProvider {

  List<StudentModel> studentList = [];

  void addStudent({required StudentModel student}){
    studentList.add(student);
    print("----------------------------");
    print(student);
    print(studentList.length);
    print("----------------------------");
  }


}