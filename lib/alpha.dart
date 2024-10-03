

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const alpha());
}

class alpha extends StatelessWidget {
  const alpha({super.key});
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
  String n = "";
  void initState() {
    super.initState();
    a();
    print("dfdfg");
  
  }

void a() async{
     final SharedPreferences userData =await  SharedPreferences.getInstance();
     n =userData.getString("name").toString();
     print(n);
}
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Center(
        child: Text(n)
      ),
      
    );
  }
}
