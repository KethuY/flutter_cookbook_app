import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: new MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => new _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My App"),
      ),
      body: new SnackbarPage(),
    );
  }
}

class SnackbarPage extends StatefulWidget {
  @override
  _SnackbarPageState createState() => new _SnackbarPageState();
}

class _SnackbarPageState extends State<SnackbarPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        onPressed: () {
          final snackBar = new SnackBar(
            content: new Text("I am SnackBar"),
            action: new SnackBarAction(label: "Undo", onPressed: () {}),
          );

          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Text("Show SnackBar"),
      ),
    );
  }
}
