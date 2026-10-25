import 'package:aut_cse464_class_project/models/student_model.dart';
import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  // A C M

  final StudentModel student;

  const StudentCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        title: Text(student.name),
        subtitle: Text("${student.department} - ${student.id} - ${student.cgpa} "),
        leading: CircleAvatar(
          backgroundColor: Colors.pink,
          child: Text(
            student.name.split("")[0].toUpperCase(),
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

// student.name.split("")[0].toUpperCase(),
// ayon -> [a, y, o, n] -> [0] == a -> ToUppercase -> A