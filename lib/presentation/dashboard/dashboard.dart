import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardHomePage(),
    );
  }
}
class DashBoardHomePage extends StatefulWidget {
  const DashBoardHomePage({super.key});

  @override
  State<DashBoardHomePage> createState() => _DashBoardHomePageState();
}

class _DashBoardHomePageState extends State<DashBoardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar
        appBar: AppBar(
          leading: Icon(Icons.menu,size: 20),
          title: Text('Welcome,Have a nice day!',style:TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            fontFamily: 'Montserrat'
          )),
          centerTitle: true,
          actions: [
            Icon(Icons.logout,size: 16)
          ],
        ),
    );
  }
}

