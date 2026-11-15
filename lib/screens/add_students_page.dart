import 'package:aut_cse464_class_project/models/student_model.dart';
import 'package:aut_cse464_class_project/provider/student_management_provider.dart';
import 'package:flutter/material.dart';

class AddStudentsPage extends StatefulWidget {
  
  final StudentManagementProvider studentManagementProvider;
  const AddStudentsPage({super.key, required this.studentManagementProvider});

  @override
  State<AddStudentsPage> createState() => _AddStudentsPageState();
}

class _AddStudentsPageState extends State<AddStudentsPage> {
  
  final formKey = GlobalKey<FormState>();


  final TextEditingController nameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController cgpaController = TextEditingController();
  final TextEditingController disController = TextEditingController();
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            foregroundColor: Colors.white,
            backgroundColor: Colors.pink,
          ),
          onPressed: (){
            
            if(formKey.currentState!.validate()){
              StudentModel studentModel = StudentModel(
              id: int.tryParse(idController.text) ?? 0000, 
              name: nameController.text, 
              department: disController.text, 
              cgpa: double.tryParse(cgpaController.text) ?? 0.0
              );

              widget.studentManagementProvider.addStudent(student: studentModel);

              nameController.clear();
              idController.clear();
              cgpaController.clear();
              disController.clear();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Your date was saved"))
              );
              Navigator.of(context).pop();


            }
            

          



          }, child: Text("Save Student")
          ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text("Student Name"),
                  prefixIcon: Icon(Icons.person, color: Colors.pink,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
          
                validator: (value){
                  if(value == null ||  value.isEmpty )
                  {
                    return "Name is required";
                  }
                  else if(value.length < 5)
                  {
                    return "Name must be at least 5 letters";
                  }
                  
                  return null;
                },
          
              ),
          
              const SizedBox(height: 10,),
              TextFormField(
                controller: idController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Student ID"),
                  prefixIcon: Icon(Icons.person, color: Colors.pink,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                validator: (value){

                  if(idController.text.isEmpty  || int.tryParse(idController.text) == null )
                  {
                    return "Enter a valid id";
                  }
                  if(idController.text.length > 7 || idController.text.length < 7)
                  {
                    return "Id must be 7 degites";
                  }
                  return null;
                },
          
              ),
          
              const SizedBox(height: 10,),
              TextFormField(
                controller: cgpaController,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text("Student CGPA"),
                  prefixIcon: Icon(Icons.numbers, color: Colors.pink,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
          
              ),
          
              const SizedBox(height: 10,),
              TextFormField(
                controller: disController,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  label: Text("Student Info"),
                  prefixIcon: Icon(Icons.person, color: Colors.pink,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}
