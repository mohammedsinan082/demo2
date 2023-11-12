import 'package:flutter/material.dart';

class Vegfood extends StatefulWidget {
  const Vegfood({Key? key}) : super(key: key);

  @override
  State<Vegfood> createState() => _VegfoodState();
}
var a=120;
var b=181;

class _VegfoodState extends State<Vegfood> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.list,color: Colors.purple.shade500,
          ),
          title: Center(
            child: Text("Vegfood",style: TextStyle(
              color: Colors.purple.shade600,fontSize: 25,
            ),),
          ),
          actions: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/man2.jpeg"),

            ),
            SizedBox(width: 5,)
          ],
        ),

        body: Container(
          height: 1000,
          width: 392,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 392,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Punjabi"),
                    Text("Fastfood"),
                    Text("Chinese"),
                    Text("Japanese")
                  ],
                ),
              ),
              Divider(color: Colors.purple.shade600,
                thickness: 2,endIndent: 195,height: 3,
                indent: 90,),
              SizedBox(height: 5,),
              Container(
                height: 520,
                padding: EdgeInsets.all(10),
                width: double.infinity,
              //  color: Colors.red,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 148,
                          width: 160+180,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade300,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 150,
                                  //  color: Colors.green,
                                    child: Center(child: Text("Tomato Pizza")),
                                  ),
                                ],
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 148,
                                width: 150,
                              //  color: Colors.yellow,
                              )
                            ],
                          ),
                         
                        ),
                        SizedBox(height: 3,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 193,
                                  width: 168,
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade300,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                       // color: Colors.green,
                                        child: Center(child: Text("Tasty Burger")),
                                      ),
                                      Column(

                                        children: [
                                          Container(
                                           height: 100,
                                           width: 168,
                                          //  color: Colors.yellow,

                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Container(
                                  height: 153,
                                  width: 168,
                                  decoration: BoxDecoration(
                                      color:Colors.pink.shade300,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                      //  color: Colors.yellow,
                                        child: Center(child: Text("Toca Bell")),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 168,
                                      //  color: Colors.green,
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(width: 3,),
                            Column(
                              children: [
                                Container(
                                  height: 138,
                                  width: 168,
                                  decoration: BoxDecoration(
                                      color:Colors.pink.shade300,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                      //  color: Colors.yellow,
                                        child: Center(child: Text("Fries Chips")),
                                      ),
                                      Container(
                                        height: 80,
                                        width: 168,
                                        //color: Colors.green,
                                      )
                                    ],
                                  ),
                                  
                                ),
                                SizedBox(height: 3,),
                                Container(
                                  height: 208,
                                  width: 168,
                                  decoration: BoxDecoration(
                                    color:Colors.pink.shade300,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                      //  color: Colors.yellow,
                                        child: Center(child: Text("Veggie Delite")),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 168,
                                       // color: Colors.green,
                                      )
                                    ],
                                  ),
                                 
                                ),
                              ],
                            )
                          ],
                        ),


                      ],
                    )

                  ],
                ),
                
              ),

              Container(
                height: 50,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,color: Colors.purple.shade600,size: 30,
                        ),
                        Text("Home")
                      ],
                    ),
                    Icon(
                      Icons.save_alt_outlined
                    ),
                    Icon(
                      Icons.search,
                    ),
                    Icon(
                      Icons.person_3_outlined,
                    ),

                  ],
                ),

              )

            ],
          ),
        ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
