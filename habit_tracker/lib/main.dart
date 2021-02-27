import "package:flutter/material.dart";

import "./home_page.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Habit Tracker",
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w200,
          ),
          bodyText1: TextStyle(
            color: Colors.black87,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: MyHomePage(title: "Habit Tracker"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart_sharp),
            label: "Stats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      body: SafeArea(child: HomePage()),
    );
  }
}
