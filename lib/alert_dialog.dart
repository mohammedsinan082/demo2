import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo2/main.dart';
import 'package:demo2/tab_bar.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  List<String>image=[
    "assets/images/Cristiano.png","assets/images/Messi.png","assets/images/Neymar.png","assets/images/Modric.png",
    "assets/images/Gerrard.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Alert Dialog")),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(
                  child: Text("Settings"),
              ),
              PopupMenuItem(
                child: Text("Profile"),
              ),
              PopupMenuItem(
                child: Text("Logout"),
              )
            ];
          })
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Center(child: Text("Are you sure?")),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TabBarPage()));
                              },
                              child: Container(
                                height: width*0.08,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                  borderRadius: BorderRadius.circular(width*0.03)
                                ),
                                child: Center(child: Text("Yes")),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: width*0.08,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(width*0.03)
                              ),
                                child: Center(child: Text("No")),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Center(child: Icon(Icons.abc,size: 50,))),
          SizedBox(height: width*0.1,),
          Center(child: InkWell(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  child: Column(
                    children: [
                      Text("Hello",style: TextStyle(
                        fontSize: 25
                      ),),
                      SizedBox(height: 20,),
                      InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>TabBarPage()));
                          },
                          child: Icon(Icons.bluetooth_connected_sharp)),
                    ],
                  ),
                );
              });
            },
              child: Text("Bottom Sheet"))),
          SizedBox(height: 35,),
          Center(child: Text("CarouselSlider",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),)),
          CarouselSlider.builder(
            itemCount: image.length,
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction:1,
              autoPlayAnimationDuration: Duration(seconds: 1 ),
              scrollPhysics: BouncingScrollPhysics(),
            ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              height: width*0.5,
              width: width*1,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(width*0.05)
              ),

              child: Image.asset(image[index]),
              margin: EdgeInsets.only(right: width*0.02),
            );
          },

          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
