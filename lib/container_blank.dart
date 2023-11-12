import 'package:demo2/main.dart';
import 'package:flutter/material.dart';

class ContainerBlink extends StatefulWidget {
  const ContainerBlink({Key? key}) : super(key: key);

  @override
  State<ContainerBlink> createState() => _ContainerBlinkState();
}

class _ContainerBlinkState extends State<ContainerBlink> {

  bool blink=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: width*0.1,
          ),

          blink==true?
              Container(
                height: width*0.5,
                width: width*0.5,
                color: Colors.blue,
                child: AnimatedPositioned(
                  curve: Curves.bounceInOut,
                  duration: Duration(seconds: 3),
                  child: AnimatedContainer(
                    curve: Curves.bounceInOut,
                    duration: Duration(seconds: 3),

                  ),


                ),
              ):
          Container(
            height: width*0.6,
            width:width*0.6,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5),
            ),
            child: AnimatedPositioned(
              curve: Curves.bounceIn,
              duration: Duration(seconds: 4),
              child: AnimatedContainer(
                curve: Curves.bounceIn,
                duration: Duration(seconds: 4),
              ),
            ),
          ),

          InkWell(
              onTap: () {
                blink=!blink;
                setState(() {

                });
              },
              child: Icon(Icons.add,size:width*0.2,))

        ],
      ),
    );
  }
}
