import 'package:demo2/main.dart';
import 'package:flutter/material.dart';

class Countpage extends StatefulWidget {
  const Countpage({Key? key}) : super(key: key);

  @override
  State<Countpage> createState() => _CountpageState();
}

class _CountpageState extends State<Countpage> {

  int count =0;
  void Increment (){
    count++;
    setState(() {

    });
  }

  void Decrement (){
    if(count<=0){
      count=0;
    }else {
      count--;
      setState(() {

      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count"),
      ),
      body: Container(
        height: width*0.5,
        width: width*1,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                   Increment();
                  },
                  child: CircleAvatar(
                    radius: width*0.1,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add,size: width*0.1,),

      ),
                ),
                Container(
                  height: width*0.15,
                  width: width*0.25,
                  color: Colors.white,
                  child: Center(
                    child: Text(count.toString(),style: TextStyle(
                      fontSize: width*0.1
                    ),),
                  ),
                ),
                InkWell(
                  onTap: () {
                  Decrement();
                  },
                  child: CircleAvatar(
                   radius: width*0.1,
                    backgroundColor:count>0? Colors.white:Colors.grey[400],
                    child: Icon(Icons.remove,size: width*0.1,),
                  ),
                ),
              ],
            ),
            SizedBox(height: width*0.06,),
            InkWell(
              onTap: () {
                count=0;
                setState(() {

                });
              },

              child: Container(
                height: width*0.10,
                width: width*0.20,
                color: Colors.green,
                child: Center(
                  child: Text("Reset",style: TextStyle(
                    color: Colors.white,fontSize: 20
                  ),),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
