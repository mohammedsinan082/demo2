import 'package:demo2/click_3.dart';
import 'package:flutter/material.dart';

class Click2 extends StatefulWidget {
  const Click2({Key? key}) : super(key: key);

  @override
  State<Click2> createState() => _Click2State();
}

class _Click2State extends State<Click2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Secondpage"),
      ),
        body:Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Click3()));
                },
                child: Center(child: Icon(Icons.abc,size: 100,))),
          ],
        )
    );
  }
}
