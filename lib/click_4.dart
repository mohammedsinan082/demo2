import 'package:flutter/material.dart';

class Click4 extends StatefulWidget {
  const Click4({Key? key}) : super(key: key);

  @override
  State<Click4> createState() => _Click4State();
}

class _Click4State extends State<Click4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("FourthPage"),
      ),
    );
  }
}
