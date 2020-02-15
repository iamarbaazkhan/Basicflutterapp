import 'package:flutter/material.dart';

// TO run our app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My first app",
      //calling stateful widget
      home: new HomePage(),
    );
  }
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 void _changeText(){
   setState(() {
     if (mytext.startsWith("P")) {
       mytext="Yaha par click kijiye";
     } else {
       mytext="Abey saale";
     }
   });
 }
  String mytext="Please Click";
  Widget _buildwidget(){
      return new Container(
          padding: const EdgeInsets.all(8.0),
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              new Text(mytext ,style: new TextStyle(
                fontSize:20.0,
              ),),
              new RaisedButton(child:new Text("Click", style: new TextStyle(
                color:Colors.white,
                fontSize: 20.0,
              ),),
              onPressed: _changeText,)
            ],)
          ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page")),
      body: _buildwidget(),
    );
  }
}
