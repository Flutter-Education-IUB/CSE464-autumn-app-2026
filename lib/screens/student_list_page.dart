import 'package:aut_cse464_class_project/models/student_model.dart';
import 'package:aut_cse464_class_project/provider/student_management_provider.dart';
import 'package:aut_cse464_class_project/widgets/student_card.dart';
import 'package:flutter/material.dart';

class StudentListPage extends StatefulWidget {
  // AC

  final StudentManagementProvider studentManagementProvider;

  const StudentListPage({super.key , required this.studentManagementProvider});

  @override
  State<StudentListPage> createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
 

  void addStudentInTheListAtTheTop(){
    final st =StudentModel(id: 000000, name: "TEST USER", department: "IDK", cgpa: 0.00);
    widget.studentManagementProvider.addStudent(student: st);
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
        itemCount: widget.studentManagementProvider.studentList.length,
        itemBuilder: (context, index) {
          return StudentCard(student: widget.studentManagementProvider.studentList[index]);
        },
      ),
    );
  }
}