import 'package:flutter/material.dart';

import 'main.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: width*2,
        width: width*1,
        padding: EdgeInsets.all(width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Expanded(
             child: GridView.builder(
               itemCount: 9,
               shrinkWrap: true,
               physics: BouncingScrollPhysics(),
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                    crossAxisSpacing: 10,
                 mainAxisSpacing: 10,
                 childAspectRatio: 1
               ),
               itemBuilder: (context, index) {
               return  Container(
                   height: width*0.2,
                   width: width*0.2,
                   color: Colors.blue,
                 );
               },
             ),
           )
          ],
        ),
      ),
    );
  }
}
