import 'dart:async';


import 'package:flutter/material.dart';
import 'package:spotify/dashboard.dart';
import 'package:spotify/login.dart';
// import 'package:splachscreen/Signup.dart';

void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MySignupPage(title: 'chat app'),
    );
  }
}

class MySignupPage extends StatefulWidget {
const MySignupPage({super.key, required this.title});

  final String title;

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  String getemail="";
  String getpassword="";
void getCredentials (){
if(getemail == "admin@gamil.com" && getpassword =="123"){
Navigator.push(context,MaterialPageRoute(builder: (a) => Dashboard()));
}else{
  print( "wrong credentials");
}
}

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Write your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0), // Rounded corners
                    ),
                  ),
                  onChanged: (value) => setState(() => getemail = value),
                ),
              ),
              SizedBox(height: 22.0), // Add space between the fields
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Write your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0), // Rounded corners
                    ),
                  ),
                  onChanged: (value) => setState(() => getpassword = value),
                ),
              ),
              SizedBox(height: 22.0), // Add space between the fields
             Column(
                children: [
                  Container(
                    child:ElevatedButton(
                onPressed: (){},
                child: const Text('Register'),
              ),),
                                 Container(
                    child:ElevatedButton(
                onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (a)=>Login()));},
                child: const Text('Need Login'),
              ),),
                ],
              ) // Add space between the fields
            ],
          ),
        ),
      ),
    );
  }
}