//future.delayed(
//Duration(seconds:2),)

import 'package:flutter/material.dart';
import 'verifyscreen.dart';
import 'signupscreen.dart';


class login_screen extends StatefulWidget {
  @override
  State<login_screen> createState() => login_screenstate();
}

class login_screenstate extends State<login_screen> {
bool Visibility = true;
final _formkey = GlobalKey<FormState>();
int currenIndex = 0;
bool KeepMeloggedin = false;
final controller = TextEditingController();
final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text('login to your existing account')
            ]),
          ),
          Image.network(
            'https://th.bing.com/th/id/OIP._4gpKJIl2b2GrCwg-rARsAHaH1?pid=ImgDet&rs=1',
            height: 150,
          ),
          Text(
            'Email Address',
            style: TextStyle(color: Colors.blueGrey),
          ),
          Container(
            width: 600,
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
          Container(
              margin: EdgeInsets.all(10),
              child:
                  Text('password', style: TextStyle(color: Colors.blueGrey))),
          Container(
            width: 600,
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
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'forget password?'.toUpperCase(),
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.7,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Remember me',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Checkbox(
                      value: KeepMeloggedin,
                      onChanged: (value) {
                        setState(() {});
                        KeepMeloggedin = value!;
                      }),
                ],
              )
            ],
          ),
          Container(
            width: 400,
            height: 50,
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) =>  Otp()));
                },
                child: const Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.LhZwKZUpog5hOqOQ4ybHjQHaHa?pid=ImgDet&rs=1'))),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://th.bing.com/th/id/R.cda888975eb3a93283ba1608c5ea29d3?rik=LzSFAyKTykomLA&riu=http%3a%2f%2fgetdrawings.com%2fvectors%2flogo-facebook-vector-9.png&ehk=7%2fEp%2fTvrF4LcP1iNbDOPvVWeecwM9T%2fKwv7I9x1MrYU%3d&risl=&pid=ImgRaw&r=0'))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.blueGrey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => signup_screen()));
                  },
                  child: const Text('signup'))
            ],
          )
        ],
      ),
    );
  }
}
