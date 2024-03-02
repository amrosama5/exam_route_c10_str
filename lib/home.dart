import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  int index=0;
  List<Widget> screens = [];
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
      bottomNavigationBar: BottomNavigationBar(items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/grid-01.png')),label: 'ca'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      ],currentIndex: index,
      ),
    );
  }
}
