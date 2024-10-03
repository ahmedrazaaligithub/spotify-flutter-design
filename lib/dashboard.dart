
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:splachscreen/Dashboard.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class MyDashboardPage extends StatefulWidget {
const MyDashboardPage({super.key, required this.title});

  final String title;

  @override
  State<MyDashboardPage> createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {
  String u_name= '';
  // @override
  // void initState() async{
  //   final SharedPreferences userData = await SharedPreferences.getInstance();
  //   super.initState();
  //   u_name = userData.getString("name").toString();
  // }


  void initState() {
    print("vdfvgdfgdfg");

    // TODO: implement initState
    super.initState();
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text(u_name))
    );
  }
}