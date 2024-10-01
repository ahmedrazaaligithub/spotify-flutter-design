import 'package:flutter/material.dart';

void main() {

}

class Dashboard extends StatelessWidget {
 
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

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
       child: Text("dashboard"),
      ),
      
    );
  }
}
