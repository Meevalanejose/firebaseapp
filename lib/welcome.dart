import 'package:finalproject/login.dart';
import 'package:finalproject/signup.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('welcome',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
            SizedBox(height: 40,),
            Text('Slash Flutter provides extraordinary flutter tutorials.Do subscribe!',textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            Container(height: 300,width: 300,child: Image.asset("image/login.jpg"),),
            SizedBox(height: 30,),
            Container(
              height: 50,width: 300,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,fixedSize: Size(200,50)),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Signup()),
    );
    },
    child: Text('login',style: TextStyle(color: Colors.black,fontSize: 18),),
            )),
            SizedBox(height: 30,),
            Container(height: 50,width: 300,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,fixedSize: Size(200,50)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 18),),
                )),
          ],
        ),
      ),
    );
  }
}

