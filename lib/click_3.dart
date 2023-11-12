import 'package:demo2/click.dart';
import 'package:demo2/click_4.dart';
import 'package:flutter/material.dart';

class Click3 extends StatefulWidget {
  const Click3({Key? key}) : super(key: key);

  @override
  State<Click3> createState() => _Click3State();
}

class _Click3State extends State<Click3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
        body:Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => Click4()),
                   ModalRoute.withName('/')
                  );
                },
                child: Center(child: Icon(Icons.ad_units_outlined,size: 100,))),
          ],
        )
    );
  }
}
