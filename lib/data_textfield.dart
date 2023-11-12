import 'package:demo2/main.dart';
import 'package:flutter/material.dart';

class DataTextField extends StatefulWidget {
  final String name;
  final String password;
  final String mobile;
  final String address;
  final String email;

  const DataTextField({Key? key, required this.name,required this.password, required this.mobile, required this.address, required this.email}) : super(key: key);

  @override
  State<DataTextField> createState() => _DataTextFieldState();

}

class _DataTextFieldState extends State<DataTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data of Textfield"),
      ),
      body: Column(
        children: [
          Container(
            height: width*1,
            width: width*1,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Name: ${widget.name}",style: TextStyle(
                  fontSize: 25
                ),),
                Text(" password: ${widget.password}",style: TextStyle(
                    fontSize: 25
                ),),
                Text("Mobile:${widget.mobile} ",style: TextStyle(
                    fontSize: 25
                ),),
                Text("Address :${widget.address}",style: TextStyle(
                    fontSize: 25
                ),),
                Text("Email : ${widget.email}",style: TextStyle(
                    fontSize: 25
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
