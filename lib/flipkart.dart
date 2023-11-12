import 'package:demo2/bottom_navigation.dart';
import 'package:demo2/bottom_page1.dart';
import 'package:demo2/flipkartpg2.dart';
import 'package:demo2/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Flipkart extends StatefulWidget {
  const Flipkart({Key? key}) : super(key: key);



  @override
  State<Flipkart> createState() => _FlipkartState();
}

class _FlipkartState extends State<Flipkart> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:
             SingleChildScrollView(
               child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 392,
                    //  color: Colors.blueGrey,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("+91 9994445551",style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                          Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black12),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.check_circle,size: 18,color: Colors.yellow),
                                Text("0")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 20,
                            width: 150,
                           // color: Colors.blue,
                            child: Row(
                              children: [
                                Text("Join",style: TextStyle(
                                  color: Colors.black12,fontSize: 10
                                ),),
                                SizedBox(width: 5,),
                                Text("Flipkart",style: TextStyle(
                                  fontSize: 12,color: Colors.blue.shade900
                                ),),
                                SizedBox(width: 1,),
                                Text("Plus",style: TextStyle(
                                  color: Colors.yellow,fontSize: 12
                                ),),
                                SizedBox(width: 1,),
                                Icon(Icons.star_half_rounded,color: Colors.yellow,size: 13),
                                SizedBox(width: 1,),
                                Icon(Icons.arrow_forward_ios_outlined,size: 10,color: Colors.black38,)
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 392,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(
                                        4,4
                                    )
                                )
                              ]
                          ),
                          padding: EdgeInsets.all(9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1,color: Colors.black12),
                                      borderRadius: BorderRadius.all(Radius.circular(4))
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.bookmark_border,color: Colors.blue.shade900,),
                                        SizedBox(width: 5,),
                                        Text("Orders")
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Colors.black12),
                                        borderRadius: BorderRadius.all(Radius.circular(4))
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.circle_outlined,color: Colors.blue.shade900,),
                                        SizedBox(width: 5,),
                                        Text("Wishlist")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Flipkartpg2()));
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 170,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1,color: Colors.black12),
                                          borderRadius: BorderRadius.all(Radius.circular(4))
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.card_giftcard,color: Colors.blue.shade900,),
                                          SizedBox(width: 5,),
                                          Text("Coupons")
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: Colors.black12),
                                        borderRadius: BorderRadius.all(Radius.circular(4))
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.headset_mic,color: Colors.blue.shade900,),
                                        SizedBox(width: 5,),
                                        Text("Help Center")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Container(
                      height: 60,
                      width: 392,
                      decoration: BoxDecoration(
                        color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black12,
                           blurRadius: 2,
                           spreadRadius: 2,
                           offset: Offset(
                             4,4
                           )
                         )
                       ]
                      ),


                      child: Row(
                        children: [
                          Icon(Icons.filter_list_outlined,color: Colors.yellow,),
                          Icon(Icons.mail,color: Colors.yellow,size: 35,),
                          SizedBox(width: 10,),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Add/Verify your Email ",style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 18
                                        )),
                                        Icon(Icons.circle,size: 8,color: Colors.red.shade900,)
                                      ],
                                    ),
                                    Text("Get latest updates of your order",
                                    style: TextStyle(
                                      fontSize: 15
                                    ),),
                                  ],
                                ),
                                SizedBox(width: 11,),
                                Container(
                                  height: 32,
                                  width: 90,
                                  color: Colors.blue.shade900,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Update",style: TextStyle(
                                        fontSize: 18,color: Colors.white
                                      ),)
                                    ],
                                  )
                                )

                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                    Container(
                      height: 80,
                      width: 392,
                     //color: Colors.green,
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Credit Option",style: TextStyle(
                                fontSize: 17
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Row(
                                        children: [
                                Icon(Icons.calendar_month,color: Colors.blue.shade900,),
                                          SizedBox(width: 3,),
                                          Column(
                                            crossAxisAlignment:CrossAxisAlignment.start ,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("Flipkart Pay Later",style: TextStyle(
                                                    fontSize: 12
                                                  )),
                                                  SizedBox(width: 231,),
                                                  Icon(Icons.arrow_forward_ios_rounded,size: 12,)
                                                ],
                                              ),
                                              SizedBox(height: 4,),
                                              Text("Complete application & get 500* gift card",style: TextStyle(

                                             fontSize: 10 ),)
                                            ],
                                          ),



                                        ],
                                      ),
                                  ),

                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 392,
                      color: Colors.yellow.shade600,
                      child: Row(
                        children: [
                          Lottie.asset("assets/images/Gift.json",height: 120,width: 120),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Big billion days",style: TextStyle(
                                 fontWeight: FontWeight.bold,fontSize: 17
                              ),),
                              Text("Coming Soon",style: TextStyle(
                                fontSize: 10
                              ),)
                            ],
                          ),
                          SizedBox(width: 116,),
                          Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 392,
                      color: Colors.white10,
                      child: Column(
                        children: [
                          Container(
                            height: 220,
                            width: 392,
                           // color: Colors.yellow.shade500,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2,
                                      spreadRadius: 2,
                                      offset: Offset(
                                          4,4
                                      )
                                  )
                                ]
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Account Settings",style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.add,size: 27,color: Colors.blue.shade900,),
                                        SizedBox(width: 6,),
                                        Text("Flipkart Plus"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person,size: 27,color: Colors.blue.shade900,),
                                        SizedBox(width: 6,),
                                        Text("Edit Profile"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.wallet,size: 27,color: Colors.blue.shade900,),
                                        SizedBox(width: 6,),
                                        Text("Saved Cards & Wallet"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_pin,size: 27,color: Colors.blue.shade900,),
                                        SizedBox(width: 6,),
                                        Text("Saved Addresses"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.language,size: 27,color: Colors.blue.shade900,),
                                        SizedBox(width: 6,),
                                        Text("Select Language"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.notification_important_sharp,size: 27,color: Colors.blue.shade900,),
                                        SizedBox(width: 6,),
                                        Text("Notification Settings"),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 70,
                            width: 392,
                           // color: Colors.blueGrey,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("My Activity",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.rate_review,color: Colors.blue.shade900,),
                                    SizedBox(width: 8,),
                                    Text("Reviews"),
                                    SizedBox(width: 275,),
                                    Icon(Icons.arrow_forward_ios_rounded,size: 11,)
                                  ],
                                )
                              ],
                            ),
                          )


                        ],
                      ),
                    )

                  ],
                ),
            ),
             ),

        ),
      ),
      debugShowCheckedModeBanner: false,

    );
  }
}
