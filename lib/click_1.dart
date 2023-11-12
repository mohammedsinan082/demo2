import 'package:demo2/click_2.dart';
import 'package:flutter/material.dart';

class Click1 extends StatefulWidget {
  const Click1({Key? key}) : super(key: key);

  @override
  State<Click1> createState() => _Click1State();
}

class _Click1State extends State<Click1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firstpage"),
      ),
      backgroundColor: Colors.red,
        body:Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Click2()));
                },
                child: Center(child: Icon(Icons.account_box_sharp,size: 100,))),
          ],
        )
    );
  }
}
