import 'package:exam/second_screen/first_tab.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
   SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int index=0;

  List<Widget> screens = [
    FirstTab(),
    FirstTab(),
    FirstTab(),
    FirstTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
child: Image.asset('assets/images/Ellipse 10.png'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, Jade',textAlign: TextAlign.start,),
            Text('Ready to workouts?',style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        actions: [
          Icon(Icons.add_alert)
        ],
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,onTap: (value) {
        index = value;
        setState(() {});
      },backgroundColor: Colors.white,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: '.'
          ),
          BottomNavigationBarItem(icon:  Icon(Icons.send),label: '.',),
          BottomNavigationBarItem(icon: Icon(Icons.add_chart),label: '.',),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: '.',),
        ],currentIndex: index,
      ),
    );
  }
}
