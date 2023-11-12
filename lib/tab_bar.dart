import 'package:demo2/main.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Tab Bar")),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width*1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      Container(
                        height: width*0.20,
                        width: width*1,
                       // color: Colors.red.shade200,
                        child: TabBar(
                        //  labelColor: Colors.blue,

                          unselectedLabelColor: Colors.blue,
                          physics: BouncingScrollPhysics(),
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                          indicator: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(width*0.02)
                          ),
                          tabs: [
                            Text("A"),
                            Text("B"),
                            Text("C")
                          ],
                        ),
                      ),
                      Container(
                        height: width*0.7,
                        width: width*1,
                        //color: Colors.brown,
                        child: TabBarView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            Container(
                              color: Colors.purple,
                            ),
                            Container(
                              color: Colors.yellow,
                            ),
                            Container(
                              color: Colors.orange,
                            ),

                          ],
                        ),

                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
