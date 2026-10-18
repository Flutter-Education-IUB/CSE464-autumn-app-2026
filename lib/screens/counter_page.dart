import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  
  int count = 0;

  void increaseCount(){
    setState(() {
      count++;
      print(count);
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Key : Value -> Named parm
        title: Text("Counter Page"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increaseCount();
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.add, color: Colors.white),
      ),

      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This is a counter app for now "),
            Text(
              count.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
               child: Text("Lets Go Back"),
            ),

          ],
        ),
      ),
    );
  }
}
