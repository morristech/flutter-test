import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() { timeDilation = 5.0; runApp(new MyApp()); }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new FadeInImage.assetNetwork(
            placeholder: 'assets/black.jpg',
            image: 'https://pbs.twimg.com/profile_images/616309728688238592/pBeeJQDQ_400x400.png',
            height: 400.0,
          )
        ],
      )
    );
  }
}
