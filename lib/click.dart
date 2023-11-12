import 'package:demo2/click_1.dart';
import 'package:flutter/material.dart';

class Clickpage extends StatefulWidget {
  const Clickpage({Key? key}) : super(key: key);

  @override
  State<Clickpage> createState() => _ClickpageState();
}

class _ClickpageState extends State<Clickpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      body:Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Click1()));
              },
              child: Center(child: Icon(Icons.add,size: 100,))),
        ],
      )
    );
  }
}
