

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/alpha.dart';
import 'package:spotify/login.dart';


void main() {
  runApp(const Dummy());
}

class Dummy extends StatelessWidget {
  const Dummy({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void initState() {
  //   super.initState();
  //   a();
  //   print("Dummy");
  
  // }



// void a() async{
//      final SharedPreferences userData =await  SharedPreferences.getInstance();
//      if (userData.containsKey("name")) {
//        Navigator.push(context, MaterialPageRoute(builder: 
//        (a)=>alpha()));
//      }
//      else{
//      userData.setString("name", "Ahmed");

//      }


// }
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Full name",
                    labelText: "Write your full name",
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(6.0), // Rounded corners
                    ),
                  ),
                  // onChanged: (value) => setState(() => getName = value),
                ),
              ),
              SizedBox(height: 22.0), // Add space between the fields
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
                  // onChanged: (value) => setState(() => getemail = value),
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
                  // onChanged: (value) => setState(() => getpassword = value),
                ),
              ),
              SizedBox(height: 22.0), // Add space between the fields

              Column(
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed:(){},
                      child: const Text('Register'),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (a) => Login()));
                      },
                      child: const Text('Need tobe Login'),
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
