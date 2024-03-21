import 'package:finalproject/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Text(
            'Login',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Login to your account',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
              )),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'password',
              )),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,fixedSize: Size(200,50)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              );
            },
            child:  Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          SizedBox(height: 50,),
          Container(height: 300,width: 300,child: Image.asset("image/last.jpg"),),
        ]),
      ),

      // backgroundColor: Colors.white,
    );
  }
}
