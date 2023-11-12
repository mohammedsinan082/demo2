import 'package:flutter/material.dart';

import 'main.dart';

class Flipkartpg2 extends StatefulWidget {
  const Flipkartpg2({Key? key}) : super(key: key);


  @override
  State<Flipkartpg2> createState() => _Flipkartpg2State();
}

class _Flipkartpg2State extends State<Flipkartpg2> {
  List<Map>flip=[
    {
      "image":"assets/images/flipkart.jpg",
      "bgcolor":Colors.grey,
      "text1":"All",
      "text2":"Rewards",
    },
    {
      "image": "assets/images/Supercoin.png",
      "bgcolor": Colors.yellow[300],
      "text1":"SuperCoin",
      "text2":"Zone",
    },
{
"image": "assets/images/joystick.png",
"bgcolor": Colors.deepPurple[100],
"text1":  "Game",
"text2":"Zone",

},
    {
      "image": "assets/images/Video.png",
      "bgcolor":  Colors.deepOrange[50],
      "text1": "Videos",
      "text2":""
    },


  ];




  List<Map>ad=[
    {
      "text1": "Price Drop Alert!",
      "image": "assets/images/Aeroplane.png",
      "text2": "Flat 10% Off on Domestic Flights",
      "text3": "code: FLYOCP",
      "bgcolor":Colors.blue.shade400,
      "textsize":""

    },
    {
      "text1": "WOMEN'S PASS",
      "image": "assets/images/lady.png",
      "text2": "Avail Benefits worth 3000+ on 40+ Brand Deals",
      "text3": "Get Extra 200 discount on your next purchase",
      "bgcolor":Colors.brown.shade400,

    },
    {
      "text1": "Price Drop Alert!",
      "image": "assets/images/building.png",
      "text2": "Up to 30-80% Off* on Hotels",
      "text3": "Code: FKSTAY",
      "bgcolor":Colors.orange.shade400,
    },
    {
      "text1": "More Rewards & Coupons",
      "image": "assets/images/Supercoin.png",
      "text2": "Get Up to 100% Off using Coins",
      "text3": "Code: FKSTAY",
      "bgcolor":Colors.grey.shade400
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coupons",style: TextStyle(
          fontSize: 17
        ),),
        actions: [
          Icon(Icons.search,size: 22,),
          SizedBox(width: 18,),
          Icon(Icons.shopping_cart,size: 22,),
          SizedBox(width: 18,),
          Icon(Icons.person,size: 22,),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: width*2,
          width: width,
     padding: EdgeInsets.all(7),
     //   color: Colors.green,
          child: Column(
            children: [
              Row(
                children: [
                  Text(("See Rewards By"),style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w500
                  ),),
                ],
              ),
              SizedBox(height: 8,),
              Container(
                height: width*0.26,
                width: width*1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                  Expanded(
                    child: ListView.builder(
                      itemCount: flip.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: width*0.24,
                          width: width*0.24,
                          margin: EdgeInsets.only(right: 5),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: width*0.17,
                                    width: width*0.20,
                                   // color: Colors.greenAccent,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(flip[index]["text1"]),
                                        Text(flip[index]["text2"]),
                                      ],
                                    ),

                                  ),
                                ],
                              ),

                              Positioned(
                                left: 25,
                                bottom: 52,
                                child: CircleAvatar(
                                  radius:15,
                                  backgroundColor: (flip[index]["bgcolor"]),
                                  child: Image.asset(flip[index]["image"],
                                    width: 17,
                                    height: 17,),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                    // Container(
                    //   height: width*0.23,
                    //   width: width*0.23,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(width: 1,color: Colors.black38,),borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: Stack(
                    //     children: [
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Container(
                    //             height: width*0.17,
                    //             width: width*0.20,
                    //             color: Colors.greenAccent,
                    //
                    //           ),
                    //         ],
                    //       ),
                    //
                    //       Positioned(
                    //         left: 25,
                    //         bottom: 52,
                    //         child: CircleAvatar(
                    //           radius:15,
                    //           backgroundColor: Colors.black12,
                    //           child: Image.asset("assets/images/flipkart.jpg",
                    //             width: 17,
                    //             height: 17,),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   height: width*0.23,
                    //   width: width*0.23,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(width: 1,color: Colors.black38,),borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: Stack(
                    //     children: [
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Container(
                    //             height: width*0.17,
                    //             width: width*0.20,
                    //             color: Colors.greenAccent,
                    //
                    //           ),
                    //         ],
                    //       ),
                    //
                    //       Positioned(
                    //         left: 25,
                    //         bottom: 52,
                    //         child: CircleAvatar(
                    //           radius:15,
                    //           backgroundColor: Colors.black12,
                    //           child: Image.asset("assets/images/flipkart.jpg",
                    //             width: 17,
                    //             height: 17,),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   height: width*0.23,
                    //   width: width*0.23,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(width: 1,color: Colors.black38,),borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: Stack(
                    //     children: [
                    //       Column(
                    //         mainAxisAlignment: MainAxisAlignment.end,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Container(
                    //             height: width*0.17,
                    //             width: width*0.20,
                    //             color: Colors.greenAccent,
                    //
                    //           ),
                    //         ],
                    //       ),
                    //
                    //       Positioned(
                    //         left: 25,
                    //         bottom: 52,
                    //         child: CircleAvatar(
                    //           radius:15,
                    //           backgroundColor: Colors.black12,
                    //           child: Image.asset("assets/images/flipkart.jpg",
                    //             width: 17,
                    //             height: 17,),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 13,),
             SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("My Coupons",style: TextStyle(
                         fontSize: 20,fontWeight: FontWeight.w500,
                       ),),
                       Text("Add Coupon",style: TextStyle(
                           fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue.shade900
                       ),)
                     ],
                   ),
                   SizedBox(height: 10,),
                   Container(
                     height: width*1.1,
                     child: ListView.builder(
                       shrinkWrap: true,
                       itemCount: ad.length,
                       physics: BouncingScrollPhysics(),
                       itemBuilder:(context, index) {

                         print(ad[index].keys);
                         return Container(
                             height: width*0.19,
                             width: width*1,
                             decoration: BoxDecoration(
                               color: ad[index]["bgcolor"],
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                             ),
                             margin: EdgeInsets.all(5),
                             child: Row(
                               children: [
                                 Image.asset((ad[index]["image"]??""),width: 70,height: 70,),
                                 SizedBox(width: 5,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("|",style: TextStyle(
                                         fontSize: 7,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 7,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 7,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 7,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 7,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 7,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 5,color: Colors.white
                                     ),),
                                     Text("|",style: TextStyle(
                                         fontSize: 5,color: Colors.white
                                     ),),
                                   ],
                                 ),
                                 SizedBox(
                                   width: 20,
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Text(ad[index]["text1"],style: TextStyle(
                                         fontSize: width*0.04,color: Colors.white,fontWeight: FontWeight.w300
                                     ),),
                                     Text(ad[index]["text2"],style: TextStyle(
                                       fontSize:width*0.032,color: Colors.white,
                                     )),
                                     Text(ad[index]["text3"],style: TextStyle(
                                         fontSize: width*0.03,fontWeight: FontWeight.w300,color: Colors.white
                                     ),)


                                   ],
                                 )
                               ],
                             )
                         );
                       },
                     ),
                   )
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
