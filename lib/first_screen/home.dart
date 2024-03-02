import 'package:exam/first_screen/first_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;

  List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage('assets/images/logo.png'),),
        title: Text('Mondy',style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.add_alert_sharp),
        ],
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,onTap: (value) {
        index = value;
        setState(() {});
      },backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''
        ),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/grid-01.png')),label: '',),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: '',),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: '',),
      ],currentIndex: index,
      ),
    );
  }
}
