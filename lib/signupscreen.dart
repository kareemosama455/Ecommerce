import 'package:flutter/material.dart';


class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
       Container(
            margin: EdgeInsets.all(20),
            child: Column(children: [
              Text(
                ' sign up',
                style: TextStyle(fontSize: 20,),
                
              ),
              Text('please enter your informatin below here')
            ]),
          )
    ],),);
  }
}
