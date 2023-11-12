

import 'package:demo2/Second_page.dart';
import 'package:demo2/first_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading:true,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back))
            ],
          ),
          // drawer: Drawer(
          //   child: ListView(
          //     children: [
          //       DrawerHeader(
          //         child: ListTile(
          //           leading:Icon(
          //             Icons.person,
          //           ),
          //           title: Text("Profile"),
          //         ),
          //       decoration: BoxDecoration(
          //         color: Colors.blueGrey,
          //       ),),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings),
          //         title: Text("Settings"),
          //       )
          //     ],
          //   ),
          //
          // ),
          body: SafeArea(
          child: Container(
            height: double.infinity,
            width:double.infinity,
            color: Colors.black38,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/Me.jpeg"),
                ),
                Text("Mohammed Sinan",style: TextStyle(
                  fontFamily: "Raleway",color: Colors.black,fontSize: 25
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 90,right: 90),
                  child: Container(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("+91 9895874133"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title:Text ("mohammedsinan082@gmail.com"),
                      trailing: Icon(Icons.add),
                    ),
                  ),
                ),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Secondpage()));
                }, icon: Icon(Icons.add,size: 35,color: Colors.red,),),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                    },
                    child: Icon(Icons.abc_sharp)),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>FirstPage()));
                  },


                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
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



