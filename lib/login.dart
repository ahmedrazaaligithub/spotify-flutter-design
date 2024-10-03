

import 'package:flutter/material.dart';
import 'package:spotify/dashboard.dart';


import 'package:spotify/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:splachscreen/login.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoginPage> createState() => _MyloginPageState();
}

class _MyloginPageState extends State<MyLoginPage> {
  String getemail = "";
  String getpassword = "";
  @override
  // void initState() async {
  //   final SharedPreferences userData = await SharedPreferences.getInstance();
  //   if (userData.containsKey('name')) {
  //     Navigator.push(context, MaterialPageRoute(builder: (a) => Dashboard()));
  //   }
  //   super.initState();
  // }
  void initState() {
    print("vdfvgdfgdfg");

    // TODO: implement initState
    super.initState();
  }

  void getCredentials()  async {
    final SharedPreferences userData = await SharedPreferences.getInstance();
    String userEmail = userData.getString('email').toString();
    String userPassword = userData.getString('password').toString();

    if (getemail == userEmail && getpassword == userPassword) {
      Navigator.push(context, MaterialPageRoute(builder: (a) => Dashboard()));
    } else {
      print("wrong credentials");
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
                      borderRadius:
                          BorderRadius.circular(6.0), // Rounded corners
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
                      borderRadius:
                          BorderRadius.circular(6.0), // Rounded corners
                    ),
                  ),
                  onChanged: (value) => setState(() => getpassword = value),
                ),
              ),
              SizedBox(height: 22.0),
              Column(
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: getCredentials,
                      child: const Text('Login'),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (a) => Signup()));
                      },
                      child: const Text('Need to be register'),
                    ),
                  ),
                ],
              ) // Add space between the fields
            ],
          ),
        ),
        ),
      
    );
  }
}
