import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
       body: Container(
         height: 1000,
         width: 392,
        // color: Colors.yellow,

         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 12),
               child: Container(
                 height: 90,
                 width: double.infinity,
                // color: Colors.pink,
                 child:Row(

                   children: [
                     Center(child: Text("Instagram",style: TextStyle(
                         fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white
                     ),)),
                     Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,size: 25,),
                     Row(
                       children: [
                         Container(
                         height: 90,
                           width: 240,
                           padding: EdgeInsets.only(top: 12,bottom: 12,right: 12),
                          // color: Colors.yellow,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Container(
                                   child: Icon(Icons.heart_broken_outlined,color: Colors.white,)),
                               SizedBox(width: 5,),
                               Container(
                                   child: Icon(Icons.message_outlined,color: Colors.white,)),
                             ],
                           ),
                       )
                       ],
                     )
                   ],
                 ),

               ),
             ),
             Container(
               height: 100,
               width: 392,
               //color: Colors.yellow,
               child: Row(
                 children: [
                   Container(
                     height: 100,
                     width: 98,
                     margin: EdgeInsets.all(2),
                     padding: EdgeInsets.all(2),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100),
                       color: Colors.white,
                       border: Border.all(
                         width: 2
                       )
                     ),
                     child: CircleAvatar(
                       radius: 9,
                       backgroundImage: AssetImage("assets/images/Burger.jpeg"),
                     )
                     

                   ),
                   Container(
                     height: 100,
                     width: 96,
                     color: Colors.black,
                     child: CircleAvatar(
                       radius: 9,
                       
                     ),

                   ),
                   Container(
                     height: 100,
                     width: 96,
                     color: Colors.purple,
                     child: CircleAvatar(
                       radius: 9,
                     ),

                   ),
                   Container(
                     height: 100,
                     width: 96,
                     color: Colors.green,
                     child: CircleAvatar(
                       radius: 9,
                     ),

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
