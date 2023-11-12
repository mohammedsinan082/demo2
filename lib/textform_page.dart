import 'dart:core';

import 'package:flutter/material.dart';

import 'data_textfield.dart';
import 'main.dart';

class TextFormPage extends StatefulWidget {
  const TextFormPage({Key? key}) : super(key: key);

  @override
  State<TextFormPage> createState() => _TextFormPageState();
}

class _TextFormPageState extends State<TextFormPage> {
  TextEditingController name_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  TextEditingController contact_controller=TextEditingController();
  TextEditingController address_controller=TextEditingController();
  TextEditingController email_controller=TextEditingController();

  RegExp contact_validator= RegExp(r"[0-9]{10}$");
  RegExp email_validator = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{3,4}$");
  RegExp password_validator = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8}$");


final formKey =GlobalKey<FormState>();

  bool eyeview=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form Field"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: width*2,
          width: width*1,
          padding: EdgeInsets.all(width*0.05),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  textCapitalization: TextCapitalization.sentences,
                  //maxLength: 5,
                  // maxLines: null,
                  // minLines: 5,
                  controller: name_controller,
                  style: TextStyle(
                    fontSize: width*0.06,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                      fontSize: width*0.06,
                      color: Colors.grey,
                    ),
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(
                      fontSize: width*0.06,
                      color: Colors.greenAccent,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.02),
                      borderSide:BorderSide(
                        color: Colors.purple
                      )
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.07),
                          borderSide:BorderSide(
                            color: Colors.orange,
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,

                  textCapitalization: TextCapitalization.sentences,
                  //maxLength: 5,
                  // maxLines: null,
                  // minLines: 5,
                  controller: password_controller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                     if(!password_validator.hasMatch(value!)){
                       return "Enter valid input";
                     }else{
                       return null;
                     }
                  },
                  style: TextStyle(
                    fontSize: width*0.06,
                    color: Colors.black,
                  ),
                  obscureText:eyeview? true:false
                  ,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          eyeview=!eyeview;
                          setState(() {

                          });
                        },
                        child: Icon(eyeview?Icons.visibility_off_outlined:Icons.remove_red_eye_outlined)),
                    //   prefix: Icon(Icons.person),
                    // suffixText: "abc",
                    // suffixStyle: TextStyle(
                    //   fontWeight: FontWeight.bold
                    // ),
                    // prefixText: "New",
                    // prefixStyle: TextStyle(
                    //   fontWeight: FontWeight.bold
                    // ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.grey,
                      ),
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.greenAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.02),
                          borderSide:BorderSide(
                              color: Colors.purple
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.07),
                          borderSide:BorderSide(
                            color: Colors.orange,
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  //maxLength: 5,
                  // maxLines: null,
                  // minLines: 5,
                  controller: contact_controller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!contact_validator.hasMatch(value!))
                      {
                        return "Enter valid Input";
                      }else{
                      return null;
                    }
                  },
                  style: TextStyle(
                    fontSize: width*0.06,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Mobile",
                      labelStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.grey,
                      ),
                      hintText: "Enter your Contact",
                      hintStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.greenAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.02),
                          borderSide:BorderSide(
                              color: Colors.purple
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.07),
                          borderSide:BorderSide(
                            color: Colors.orange,
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  textCapitalization: TextCapitalization.sentences,
                  //maxLength: 5,
                  maxLines: null,
                  // minLines: 5,
                  controller: address_controller,
                  style: TextStyle(
                    fontSize: width*0.06,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Address",
                      labelStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.grey,
                      ),
                      hintText: "Enter Your Address",
                      hintStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.greenAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.02),
                          borderSide:BorderSide(
                              color: Colors.purple
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.07),
                          borderSide:BorderSide(
                            color: Colors.orange,
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  textCapitalization: TextCapitalization.sentences,
                  //maxLength: 5,
                  // maxLines: null,
                  // minLines: 5,
                  controller: email_controller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!email_validator.hasMatch(value!)){
                      return "Enter valid Email";
                    }else{
                      return null;
                    }
                  },
                  style: TextStyle(
                    fontSize: width*0.06,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.grey,
                      ),
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(
                        fontSize: width*0.06,
                        color: Colors.greenAccent,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.02),
                          borderSide:BorderSide(
                              color: Colors.purple
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.07),
                          borderSide:BorderSide(
                            color: Colors.orange,
                          )
                      )
                  ),
                ),

                SizedBox(height: 30,),
                Center(
                  child: InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate() &&
                      name_controller.text != "" &&
                          password_controller.text != "" &&
                          contact_controller.text != "" &&
                          address_controller.text != "" &&
                          email_controller.text != "") {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>
                            DataTextField(name: name_controller.text,
                                password: password_controller.text,
                                mobile: contact_controller.text,
                                address: address_controller.text,
                                email: email_controller.text)));
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Submitted Succesfully!")));
                      }
                      else {
                        name_controller.text == "" &&
                            password_controller.text == "" &&
                            contact_controller.text == "" &&
                            address_controller.text == "" &&
                            email_controller.text == ""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Data"))):

                        name_controller.text == "" ?
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your name")))
                            : password_controller.text == "" ?
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your password"))) :
                        contact_controller.text == "" ?
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your number"))) :
                        address_controller.text == "" ?
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your address"))) :
                            email_controller.text==""?
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Enter your email"))):
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter valid details")));
                      }
                    },
                    child: Container(
                      height: width*0.1,
                      width: width*0.2,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                      child: Center(
                        child: Text("Submit",style: TextStyle(
                          color: Colors.white,fontSize: width*0.05
                        ),),
                      ),
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
