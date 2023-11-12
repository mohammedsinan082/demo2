import 'package:flutter/material.dart';

import 'main.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
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
              child: ListView.builder(
                itemCount: 15,
               shrinkWrap: true,
               physics: BouncingScrollPhysics(),
               itemBuilder: (context, index) {
                 return Container(
                   height: width * 0.2,
                   width: width * 1,
                   color: Colors.green,
                   margin: EdgeInsets.only(bottom: 5),


                 );
               },
              ),
            ),],
        ),
      ),
    );
  }
}
