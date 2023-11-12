import 'package:flutter/material.dart';

import 'main.dart';

class DropDownPAge extends StatefulWidget {
  const DropDownPAge({Key? key}) : super(key: key);

  @override
  State<DropDownPAge> createState() => _DropDownPAgeState();
}

class _DropDownPAgeState extends State<DropDownPAge> {
   late  String dropdownvalue;
  var items=[
    "A","B","C","D","E"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down"),
        centerTitle: true,
      ),
      body: Container(
        height: width*2,
        width: width*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
                height: width * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),

                    border: Border.all(width: 1)),
                child: DropdownButton(
                  hint: Text('Select', style: TextStyle(fontSize: 15)),
                  value: dropdownvalue,
                  dropdownColor: Colors.cyan,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                  iconDisabledColor: Colors.grey,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Center(
                        child: Text(
                          items,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  isExpanded: true,
                ),
                ),



          ],
        ),
      ),
    );
  }
}
