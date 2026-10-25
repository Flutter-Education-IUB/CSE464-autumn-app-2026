import 'dart:ffi';

import 'package:aut_cse464_class_project/screens/counter_page.dart';
import 'package:aut_cse464_class_project/screens/student_list_page.dart';
import 'package:aut_cse464_class_project/utils/constant.dart';
import 'package:aut_cse464_class_project/widgets/custom_drawer.dart';
import 'package:aut_cse464_class_project/widgets/info_widget.dart';
import 'package:flutter/material.dart';

class MainAppHome extends StatefulWidget {
  const MainAppHome({super.key});

  @override
  State<MainAppHome> createState() => _MainAppHomeState();
}

class _MainAppHomeState extends State<MainAppHome> {
  void goToCounterPage() {
    Navigator.of(context).push(
      // -> Getting my navigation. stack
      MaterialPageRoute(
        builder: (context) => CounterPage(),
      ), // -> Pushing the next page
    );
  }

  void goToStudentListPage() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => StudentListPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Key : Value -> Named parm
        title: Text("Hi Everyone!"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),

      drawer: CustomDrawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          goToCounterPage();
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.arrow_circle_right_outlined, color: Colors.white),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 170,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(15),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "IUB CSE464 Class",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "This is a simple record keeping app of all the students in this cource",
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),

                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoWidget(icon: Icons.people, title: "30 Students"),
                    InfoWidget(icon: Icons.present_to_all, title: "8 Present"),
                  ],
                ),
              ],
            ),
          ),

          // NET IMAGE----------------
          Row(
            children: [
              Container(
                height: 200,
                width: 160,
                color: Colors.amber,
                child: Image.network(AppConstant.natureImage),
              ),

              Spacer(),

              Container(
                height: 200,
                width: 170,
                color: Colors.pink,
                child: Image.asset(
                  AppConstant.appNatureImage,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          // ---------------------- Action Buttons
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  goToStudentListPage();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Go TO STUDENT LIST"),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Add Student"),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
