import 'package:demo2/profile.dart';
import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Profile()));
        },
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child:  Text("BackPage",style: TextStyle(
                  fontSize: 30
              ),),
            )
          ],
        ),

      ),
    );

  }
}
