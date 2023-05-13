import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'verifyscreen.dart';
bool Visibility = true;
final _formkey = GlobalKey<FormState>();
class signup_screen extends StatefulWidget {
  const signup_screen({super.key});

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
   Center(
     child: Container(
              margin: EdgeInsets.all(20),
              child: Column(children: [
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20,),
                  
                ),
                Container(margin: EdgeInsets.all(10),child: Text('Please enter your informatin below to sign up'))
              ]),
            ),
   ),
          Image.network(
            'https://th.bing.com/th/id/OIP._4gpKJIl2b2GrCwg-rARsAHaH1?pid=ImgDet&rs=1',
            height: 150,
          ),
          Container(margin: EdgeInsets.all(10),child: Text('Name',style: TextStyle(color: Colors.blueGrey),)),
            Container(width: 600,
            child: TextFormField(
             
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  icon: Icon(Icons.accessibility),
                  suffix: Icon(Icons.accessibility),
                  prefixIcon: Icon(Icons.accessibility),
                  hintText: 'create your email',
                  labelText: 'Please Enter Your Name',
                  border: OutlineInputBorder()),
            ),
            
          ), Container(margin: EdgeInsets.all(10),child: Text('Email',style: TextStyle(color: Colors.blueGrey),)),
          Container(width: 600,
            child: TextFormField(
              validator: (v) {
                if (!v!.contains('@')) return ('invalid @');
              },
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  suffix: Icon(Icons.email),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'create your email',
                  labelText: 'e.g name@example.com',
                  border: OutlineInputBorder()),
            ),
          ),
          Container(margin: EdgeInsets.all(10), child: Text('password',style: TextStyle(color: Colors.blueGrey))),
          Container(width: 600,
            child: TextFormField(
              // maxLines: 2,
              // minLines: 2,
              keyboardType: TextInputType.phone,
              obscureText: Visibility,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  icon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        Visibility = !Visibility;
                      },
                      icon: const Icon(Icons.visibility)),
                  prefixIcon: const Icon(Icons.password),
                  hintText: 'password',
                  labelText: 'password',
                  border: const OutlineInputBorder()),
            )
   ),
   Container(
            width: 400,
            height: 50,
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            child: TextButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) ;
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) =>  Otp()));
                },
                child: const Text('login',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple)
                )),
          ),Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Already Have an account?",style: TextStyle(color: Colors.blueGrey),),
                    TextButton(
                    onPressed: () {
                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>  login_screen()));
                    },
                    child: const Text('signup'))],)],),);
  }
}
