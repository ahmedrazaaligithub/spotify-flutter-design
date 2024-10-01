import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/dashboard.dart';
import 'package:spotify/signup.dart';
// import 'package:splachscreen/login.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyLoginPage(title: 'chat app'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
const MyLoginPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoginPage> createState() => _MyloginPageState();
}

class _MyloginPageState extends State<MyLoginPage> {
  String getemail="";
  String getpassword="";
void getCredentials (){
if(getemail == "admin@gmail.com" && getpassword =="123"){
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
              SizedBox(height: 22.0),
              Column(
                children: [
                  Container(
                    child:ElevatedButton(
                onPressed: getCredentials,
                child: const Text('Login'),
              ),),
                                 Container(
                    child:ElevatedButton(
                onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (a)=>Signup()));},
                child: const Text('Need register'),
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