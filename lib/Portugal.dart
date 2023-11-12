import 'package:flutter/material.dart';

class Portugal extends StatefulWidget {
  const Portugal({Key? key}) : super(key: key);

  @override
  State<Portugal> createState() => _PortugalState();
}

class _PortugalState extends State<Portugal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 800,
            width: 392,
            color:Colors.red,
          ),
          Container(
            height: 300,
            width: 392,
            color: Colors.green.shade700,
          ),
          Positioned(
            top: 230,
            left: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 170,
                  width: 170,
                  child: Image.asset("assets/images/flag.png"),
                )
              ],




            ),
          )
        ],
      ),
    );
  }
}
