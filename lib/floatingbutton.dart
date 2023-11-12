import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton( onPressed: (){},icon: Icon(Icons.add),),
          title: Center(child: Text("new")),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.access_time))
          ],
        ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:FloatingActionButton(
         onPressed: (){

         },
         backgroundColor: Colors.red,
         child: Icon(Icons.add),
            )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
