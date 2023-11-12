import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
         title: Center(child: Text("Stack")),
      ),
      body: Container(
        height: width * 2,
        width: width * 1,
        color: Colors.yellow,
        child: Stack(
          alignment: Alignment.center,


          children: [


              Container(
                height: 250,
                width: 250,
                color: Colors.green,
              ),
            Positioned(
              bottom: 400,

              child: CircleAvatar(
                radius: 50,


              ),
            ),

          ],
        ),
      ),
    );
  }
}
