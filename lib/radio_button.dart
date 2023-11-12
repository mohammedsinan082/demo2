import 'package:demo2/container_blank.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String gender="Male";


  bool text1=false;
  bool text2=false;
  bool text3=false;


  bool tap1=true;
  bool tap2=false;
  bool tap3=false;

  bool blink=false;

  bool toggle=false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("RadioButton",style: TextStyle(
          fontSize: 20
        ),)),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender=value!;
                    });
                  }
                  ),
            Text("Male"),
              Radio(
                  value: "female",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender=value!;
                    });
                  }
              ),
              Text("Female"),
              Radio(
                  value: "others",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender=value!;
                    });
                  }
              ),
              Text("Others"),



            ],
          ),
          Text("-----------------------------------------------------------------------------------------------------"),
          SizedBox(height: width*0.07,),
          Text("CheckBox",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Checkbox(
                 value: text1,
                 onChanged: (box) {
                   setState(() {
                     text1=box!;
                   });

                 },),
              Text("A"),
              Checkbox(
                  value: text2,
                  onChanged:(box){
                    setState(() {
                      text2=box!;
                    });
                  }
              ),
              Text("B"),
              Checkbox(
                  value: text3,
                  onChanged:(box){
                    setState(() {
                      text3=box!;
                    });
                  }
              ),
              Text("C")
            ],
          ),
          Text("------------------------------------------------------------------------------------------------------"),
          SizedBox(height: width*0.02,),
          Text("Button",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: width*0.05,
          ),

        blink==true?  SizedBox(height: width*0.10,)
         : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  tap1=true;
                  tap2=false;
                  tap3=false;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      color: tap1?Colors.greenAccent:Colors.grey,
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                  child: Center(child: Text("A",style: TextStyle(
                      fontSize: 20,
                      color: tap1?Colors.white:Colors.black
                  ),)),
                ),
              ),
              InkWell(
                onTap: () {
                  tap1=false;
                  tap2=true;
                  tap3=false;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      color: tap2?Colors.greenAccent:Colors.grey,
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                  child: Center(child: Text("B",style: TextStyle(
                      fontSize: 20,
                      color: tap2? Colors.white:Colors.black
                  ),)),
                ),
              ),
              InkWell(
                onTap: () {
                  tap1=false;
                  tap2=false;
                  tap3=true;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.10,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      color: tap3?Colors.greenAccent:Colors.grey,
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                  child: Center(child: Text("C",style: TextStyle(
                      fontSize: 20,
                      color: tap3? Colors.white:Colors.black
                  ),)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: width*0.05,
          ),
          InkWell(
              onTap: () {
                blink=!blink;
                setState(() {

                });
              },
              child: Icon(Icons.abc,size: 50,)),
          Text("-------------------------------------------------------------------------------------------------------"),
          SizedBox(height: width*0.01,),
          Text("ToggleButton",style: TextStyle(
            fontSize: 25,fontWeight: FontWeight.bold
          ),),
          SizedBox(height: width*0.05,),
          InkWell(
            onTap: () {
              toggle=!toggle;
              setState(() {

              });
            },
            child: Container(
              height: width*0.085,
              width: width*0.17,
              decoration: BoxDecoration(
                color: toggle?Colors.green:Colors.black12,
                borderRadius: BorderRadius.circular(width*0.2),
                border: Border.all(
                  color: Colors.black45
                )
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    curve:Curves.easeInOut,
                       right: toggle?width*0:width*0.085,
                       left: toggle?width*0.085:width*0,
                duration: Duration(milliseconds: 300),
                      child: AnimatedContainer(
                        curve: Curves.easeInOut,
                        height: width*0.085,
                        width: width*0.085,
                        decoration: BoxDecoration(
                          color: Colors.white,shape: BoxShape.circle
                        ),
                        duration:Duration(milliseconds: 300) ,

                      ),
                      ),
               toggle?   AnimatedPositioned(
                    right: toggle?width*0.085:width*0,
                      top: width*0.02,
                      duration:Duration(milliseconds: 500),
                    child: Text("ON"),

                  ):

                  AnimatedPositioned(
                    left: toggle?width*0:width*0.085,
                    top: width*0.02,
                    duration:Duration(milliseconds: 500),
                    child: Text("OFF"),

                  ),
                ],
              ),
            ),
          ),
          Text("------------------------------------------------------------------------------------------------------"),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerBlink()));
              },
              child: Icon(Icons.abc,size: width*0.1,))
        ],
      ),
    );
  }
}
