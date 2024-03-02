import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Color(0xffF8F9FC),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/Icon (1).png')),
                        Text('Heart Rate')
                      ],
                    ),
                    Text(
                      '81 BPM',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    thickness: 1.4,
                    color: Colors.indigo,
                    endIndent: 20,
                    indent: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.list,
                          color: Colors.indigo.withOpacity(0.5),
                        ),
                        Text('To-Do')
                      ],
                    ),
                    Text(
                      '32,5 %',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    thickness: 1.4,
                    color: Colors.indigo,
                    endIndent: 20,
                    indent: 20,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/Frame (4).png')),
                        Text('To-Do')
                      ],
                    ),
                    Text(
                      '1000 Cal',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Workout Programs',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          DefaultTabController(
            length: 4,
            child: TabBar(
              tabs: [
                Tab(
                  text: 'All Type',
                ),
                Tab(
                  text: 'Full Body',
                ),
                Tab(
                  text: 'Upper',
                ),
                Tab(
                  text: 'Lower',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: Image.asset('assets/images/Plank.png'),
          ),
          SizedBox(
            height: 200,
            child: Image.asset('assets/images/Plank.png'),
          )
        ],
      ),
    );
  }
}
