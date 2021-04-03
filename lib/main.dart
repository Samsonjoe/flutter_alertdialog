import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  
  void dialog(){
    showDialog(
        builder: (context) => new AlertDialog(
          title: new Text('Warning'),
          content: new Text('You will finish Alert dialog if you press close button'),
          actions: [
            new IconButton(icon: new Icon(Icons.close), onPressed: (){Navigator.pop(context);})
          ],
        ), context: context);
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
            onPressed: (){dialog();},
        child: new Text('Activate AlertDialog'),
        ),
      ),
    );
  }
}
