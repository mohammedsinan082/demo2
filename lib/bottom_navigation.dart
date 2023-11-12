import 'package:demo2/bottom_page1.dart';
import 'package:demo2/bottom_page2.dart';
import 'package:demo2/flipkart.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int Selectedindex=0;
  List<Widget> pages=[
    Bottom1(),
    Bottom2(),
    Flipkart(),
    Flipkart(),
    Flipkart(),
  ];

  void onItemTapped(int index){

    setState(() {
      Selectedindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[Selectedindex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {


        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add),
          label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.add),
              label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms_sharp),
              label: "Alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms_sharp),
              label: "Alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarms_sharp),
              label: "Alarm"),
        ],
        onTap: onItemTapped,
        currentIndex: Selectedindex,
      ),
    );
  }
}
