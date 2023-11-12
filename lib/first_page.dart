import 'package:demo2/Second_page.dart';
import 'package:demo2/profile.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // appBar: AppBar(
      // ),
      body: Column(
        children: [
          Column(
            children: [
              Center(child: Icon(Icons.add_box_outlined,size: 100,),),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Secondpage(),),

                  );

                },
                child: Container(
                  height: 200,
                  width: 150,
                  color: Colors.black,
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}
