import 'package:exam/third_screen/first_tab.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
   ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int index=0;

  List<Widget> screens = [
    FirstTab(),
    FirstTab(),
    FirstTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,onTap: (value) {
        index = value;
        setState(() {});
      },backgroundColor: Colors.white,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: 'Today'
          ),
          BottomNavigationBarItem(icon:  Icon(Icons.category),label: 'Inshts',),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Chat',),
        ],currentIndex: index,
      ),
    );
  }
}

