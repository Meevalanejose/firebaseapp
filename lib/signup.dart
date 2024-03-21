import 'package:finalproject/welcome.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Column(
            children: [
              Text('Sign Up',style: TextStyle(
                  fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2,),
              Text('Create an account, its free')
            ],
    )
    ),
    ),
    backgroundColor: Colors.white,
    body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child:Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Align(alignment: Alignment.centerLeft,
          child:  Text('Username',)),
    TextField(
    obscureText: false,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    ),
    ),
      SizedBox(height: 15),
      Align(alignment: Alignment.centerLeft,
      child:  Text('Email',)),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
        ),),
      SizedBox(height: 15),
      Align(alignment: Alignment.centerLeft,
          child:  Text('Password',)),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),),
      SizedBox(height: 15),
      Align(alignment: Alignment.centerLeft,
          child:  Text('Confirm Password',)),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),),
      SizedBox(height: 30),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,fixedSize: Size(200,50)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Welcome()),
          );
        },
        child:  Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      SizedBox(height: 30),
      TextButton(onPressed: (){Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Signup()));},
          child: Text('Already have an account? LOGIN')),

  ]
    ),
    ),
    );
  }
}


