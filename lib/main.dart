import 'package:demo2/Insta.dart';
import 'package:demo2/Portugal.dart';
import 'package:demo2/Vegfood.dart';
import 'package:demo2/alert_dialog.dart';
import 'package:demo2/bottom_navigation.dart';
import 'package:demo2/click.dart';
import 'package:demo2/container_blank.dart';
import 'package:demo2/count.dart';
import 'package:demo2/data_textfield.dart';
import 'package:demo2/flipkart.dart';
import 'package:demo2/flipkartpg2.dart';
import 'package:demo2/floatingbutton.dart';
import 'package:demo2/grid_view.dart';
import 'package:demo2/grid_view_page.dart';
import 'package:demo2/list_view_page.dart';
import 'package:demo2/profile.dart';
import 'package:demo2/radio_button.dart';
import 'package:demo2/splash_screen.dart';
import 'package:demo2/spotify.dart';
import 'package:demo2/stack1.dart';
import 'package:demo2/tab_bar.dart';
import 'package:demo2/textform_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drop_down.dart';
var width;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        home: ContainerBlink(),


        // Scaffold(
        //   backgroundColor: Colors.white,
        //   appBar: AppBar(
        //     backgroundColor: Colors.blue.shade900,
        //     title: Center(child: Text("Example")),
        //   ),
        //   body: Container(
        //     height: double.infinity,
        //     width: double.infinity,
        //     padding: EdgeInsets.all(15),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           height: 160,
        //           width: 392,
        //           padding: EdgeInsets.all(10),
        //           decoration: BoxDecoration(
        //               color: Colors.yellow,
        //             boxShadow: [
        //               BoxShadow(color: Colors.black38,spreadRadius: 5,blurRadius: 7,
        //                   offset:Offset(
        //                     0,4
        //                   )),
        //             ],
        //             borderRadius: BorderRadius.circular(15)
        //           ),
        //           child: Row(
        //             children: [
        //               Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Text",
        //                     style: TextStyle(fontSize: 20),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Container(
        //                 height: 160,
        //                 width: 60,
        //                 child: Container(
        //                   height: 100,
        //                   width: 100,
        //                   decoration: BoxDecoration(
        //                     border: Border.all(color: Colors.black38,width: 2),
        //                   ),
        //
        //                   child: Column(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       Text(
        //                         "A",
        //                         style: TextStyle(fontSize: 20),
        //                       ),
        //                       //  SizedBox(height: 10,),
        //                       Text(
        //                         "B",
        //                         style: TextStyle(
        //                           fontSize: 20,
        //                         ),
        //                       ),
        //                       // SizedBox(height: 10,),
        //                       Text(
        //                         "C",
        //                         style: TextStyle(
        //                           fontSize: 20,
        //                         ),
        //                       ),
        //                       // SizedBox(height: 10,),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 30,
        //               ),
        //               Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Text(
        //                     "Sample",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                     ),
        //                   ),
        //                   Text(
        //                     "Example",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(
        //                 width: 20,
        //               ),
        //               Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Container(
        //                     height: 100,
        //                     width: 80,
        //                     decoration: BoxDecoration(
        //                       color: Colors.green.shade100,
        //                       border: Border.all(color: Colors.black38,width: 2)
        //                     ),
        //                     child: Column(
        //                       children: [
        //                         Text("Accurate",style: TextStyle(
        //                           fontSize: 15
        //                         ),),
        //                         Text("Duration",style: TextStyle(
        //                           fontSize: 15,
        //                         )),
        //                         SizedBox(height: 7,),
        //                         Container(
        //                           height: 40,
        //                           width: 65,
        //                           decoration: BoxDecoration(
        //                               color: Colors.black38,
        //                             border: Border.all(color: Colors.black38,
        //                             width: 2,)
        //                           ),
        //                           child:Row(
        //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Text("A"),
        //                               Column(
        //                                 mainAxisAlignment: MainAxisAlignment.center,
        //                                 children: [
        //                                   Text("B"),
        //                                   Text("C"),
        //                                 ],
        //                               ),
        //                               Text("Text"),
        //                             ],
        //                           )
        //
        //
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   Text("Text",style: TextStyle(
        //                     fontSize: 20
        //                   ),)
        //                 ],
        //               )
        //             ],
        //           ),
        //         ),
        //         SizedBox(height: 20,),
        //         Container(
        //           height: 160,
        //           width: 392,
        //           color: Colors.green.shade100,
        //           padding: EdgeInsets.all(15),
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Row(
        //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Text("AB"),
        //                   Text("AC"),
        //                   Text("ABCD"),
        //                 ],
        //               ),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                   Text("1"),
        //                   Text("2")
        //                 ],
        //               ),
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                Container(
        //                  width: 170,
        //                  child: Row(
        //                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                    children: [
        //                      Text("1"),
        //                      Text("2"),
        //                      Text("3"),],
        //                  ),
        //                ),
        //                   Text("4"),
        //                   Text("7"),
        //
        //                 ],
        //
        //               ),                 ],
        //           ),
        //         ),
        //         SizedBox(height: 10,),
        //         Divider(color: Colors.black,
        //           thickness: 2,endIndent: 10,height: 3,
        //         indent: 10,),
        //         SizedBox(height: 10,),
        //         Row(
        //           children: [
        //             CircleAvatar(
        //               radius: 80,
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                 children: [
        //                   Text("1"),
        //                   Text("2"),
        //                   Text("3"),
        //                 ],
        //               ),
        //
        //             ),
        //             SizedBox(width: 10,),
        //             Container(
        //               height: 150,
        //               width: 150,
        //               color: Colors.red.shade100,
        //               padding: EdgeInsets.all(15),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       Text("A"),
        //                       Text("1"),
        //                       Text("ABC"),
        //
        //
        //                     ],
        //                   ),
        //                   Divider(color: Colors.black,
        //                     thickness: 2,endIndent: 1,height: 3,
        //                     indent: 1,),
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       Text("B"),
        //                       Text("2"),
        //                       Text("23"),
        //                       Text("36"),
        //                     ],
        //                   ),
        //                   Divider(color: Colors.black,
        //                     thickness: 2,endIndent: 1,height: 3,
        //                     indent: 1,),
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                     Text("Text"),
        //                     Text("Sample"),
        //                   ],
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             SizedBox(width: 7,),
        //             Container(
        //               height: 150,
        //               width: 35,
        //               decoration: BoxDecoration(
        //                 border: Border.all(width: 2),
        //               ),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly
        //                 ,
        //                 children: [
        //                   Divider(color: Colors.black,
        //                     thickness: 2,endIndent: 0,height: 3,
        //                     indent: 0,),
        //                   Divider(color: Colors.black,
        //                     thickness: 2,endIndent: 0,height: 3,
        //                     indent: 0,),
        //                 ],
        //               ),
        //             )
        //           ],
        //
        //         ),
        //         SizedBox(height: 30,),
        //
        //         Row(
        //           children: [
        //             Column(
        //               children: [
        //                 Icon(Icons.roundabout_left,size: 30,),
        //                 Icon(Icons.roundabout_left,size: 30,),
        //               ],
        //             ),
        //             SizedBox(width: 20,),
        //             Column(
        //               children: [
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20
        //                 ),),
        //                 SizedBox(height: 10,),
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20
        //                 ),),
        //               ],
        //             ),
        //             SizedBox(width: 20,),
        //             Column(
        //               children: [
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20,
        //                 ),),
        //                 SizedBox(height: 10,),
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20
        //                 ),),
        //               ],
        //             ),
        //             SizedBox(width: 20,),
        //             Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Text("Sample",style: TextStyle(
        //                   fontSize: 20
        //                 ),)
        //               ],
        //             ),
        //             SizedBox(width: 20,),
        //             Column(
        //               children: [
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20
        //                 ),),
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20
        //                 ),),
        //                 Text("Text",style: TextStyle(
        //                   fontSize: 20
        //                 ),)
        //               ],
        //             ),
        //             SizedBox(width: 20,),
        //             Column(
        //               children: [
        //                 Icon(Icons.add),
        //                 Icon(Icons.add),
        //                 Icon(Icons.add),
        //               ],
        //             )
        //
        //           ],
        //         )
        //       ],
        //     ),
        //   ),
        // ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
