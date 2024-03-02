import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('AliceCare'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              hintText: 'Articles',
              hintStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
