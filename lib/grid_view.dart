import 'package:flutter/material.dart';

import 'main.dart';

class Gridview extends StatefulWidget {
  const Gridview({Key? key}) : super(key: key);

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List<Map>plr=[
    {
      "image":"assets/images/Cristiano.png",
      "Text":"Cristiano Ronaldo",
      "textStyle":TextStyle(
          fontSize: 19,color: Colors.black
      )
    },
    {
      "image":"assets/images/Messi.png",
      "Text":"Lional Messi",
    "textStyle":TextStyle(
    fontSize: 20,color: Colors.black,
    )
    },
    {
      "image":"assets/images/Neymar.png",
      "Text":"Neymar Jr",
      "textStyle":TextStyle(
        fontSize: 21,color: Colors.black,
      )
    },
    {
      "image":"assets/images/Ozil.png",
      "Text":"Mesut Ozil",
      "textStyle":TextStyle(
      fontSize: 22,color: Colors.black,
    )
    },
    {
      "image":"assets/images/Suarez.png",
      "Text":"Suarez",   "textStyle":TextStyle(
      fontSize: 23,color: Colors.black,
    )
    },
    {
      "image":"assets/images/Modric.png",
      "Text":"Luka Modric",
      "textStyle":TextStyle(
        fontSize: 24,color: Colors.black,
      )
    },
    {
      "image":"assets/images/Kroos.png",
      "Text":"Toni Kroos"
    },
    {
      "image":"assets/images/Rodriguez.png",
      "Text":"Rodriguez"
    },
    {
      "image":"assets/images/Higuain.png",
      "Text":"Higuain"
    },
    {
      "image":"assets/images/Gerrard.png",
      "Text":"Gerrard"
    }


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text("Players",style: TextStyle(
          fontWeight: FontWeight.w200,fontSize: 30
        ),)),
      ),
      body: Container(
        height: width*2,
        width: width*1,
        color: Colors.white,

        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text("International Players",style: TextStyle(
              fontSize: 17,fontWeight: FontWeight.w400,
            ),)),
            Expanded(
              child: GridView.builder(
                itemCount: plr.length,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),

                itemBuilder: (context, index) {
                  return Container(
                    height: width*0.6,
                    width:width*0.5 ,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color:
                        Colors.black.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:Offset(
                            0,4
                          ),
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius:width*0.170,
                            backgroundColor: Colors.blueGrey,
                            child: Image(image: AssetImage(plr[index]["image"]))),
                        Text(plr[index]["Text"],
                            style: plr[index]["textStyle"]

                        ),
                      ],
                    ),
                  );
                },


              ),
            ),

          ],
        ),
      ),
    );
  }
}
