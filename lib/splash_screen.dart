import 'package:demo2/flipkart.dart';
import 'package:demo2/radio_button.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
@override
  void initState() {
  Future.delayed(Duration(seconds: 5)).then((value){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RadioButton()));
  });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: width*2,
        width: width*1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome",
              style: TextStyle(
                fontSize: width * 0.1,
                fontWeight: FontWeight.w600,
                color: Colors.orange,
              ),
              ),
              SizedBox(height: width*0.07,),
              CircularProgressIndicator(

              )
            ],
          ),
      ),


    );
  }
}
