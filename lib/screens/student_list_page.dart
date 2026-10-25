import 'package:aut_cse464_class_project/models/student_model.dart';
import 'package:aut_cse464_class_project/widgets/student_card.dart';
import 'package:flutter/material.dart';

class StudentListPage extends StatefulWidget {
  const StudentListPage({super.key});

  @override
  State<StudentListPage> createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  List<StudentModel> students
   = [
    StudentModel(id: 15873445, name: "Ayon Ahmed", department: "BBA", cgpa: 3.72),
    StudentModel(id: 12345678, name: "Nusrat Jahan", department: "CSE", cgpa: 3.91),
    StudentModel(id: 16782341, name: "Sakib Hasan", department: "EEE", cgpa: 3.45),
    StudentModel(id: 14567239, name: "Maliha Rahman", department: "Economics", cgpa: 3.68),
    StudentModel(id: 17893452, name: "Tanvir Hossain", department: "CSE", cgpa: 3.25),
    StudentModel(id: 13254786, name: "Farzana Akter", department: "BBA", cgpa: 3.84),
    StudentModel(id: 15432867, name: "Imran Chowdhury", department: "LLB", cgpa: 3.12),
    StudentModel(id: 18923456, name: "Mehjabin Sultana", department: "Pharmacy", cgpa: 3.96),
    StudentModel(id: 11234567, name: "Rafi Islam", department: "CSE", cgpa: 3.57),
    StudentModel(id: 17654329, name: "Tasmia Noor", department: "Media", cgpa: 3.38),
    StudentModel(id: 14321987, name: "Fahim Rahman", department: "BBA", cgpa: 3.63),
    StudentModel(id: 16543218, name: "Ayesha Siddiqua", department: "Environmental Science", cgpa: 3.79),
    StudentModel(id: 12198765, name: "Nabil Ahmed", department: "CSE", cgpa: 3.08),
  ];


  void addStudentInTheListAtTheTop(){
    final st =StudentModel(id: 000000, name: "TEST USER", department: "IDK", cgpa: 0.00);
    students.insert(0, st);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: Text("Student List"),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: addStudentInTheListAtTheTop,
        backgroundColor: Colors.pink,
        child: Icon(Icons.add , color: Colors.white,),
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentCard(student: students[index]);
        },
      ),
    );
  }
}