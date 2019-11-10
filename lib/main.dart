import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'This isn`t a Home Page'),
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
  int _counter = 0;
  int ch=0;
  int i=0;
  String _greeting='Sun and Ming';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter-=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
             '$_counter'
            ),
            Text(
              '$_greeting',
              style: Theme.of(context).textTheme.display1,
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_counter<10){
            for(i=0;i<10;i++){
              _incrementCounter();

            }
            _greeting='Ming';
          }
          else if(_counter>=10){
            for(i=0;i<=10;i++){
              _decrementCounter();
              if(_counter==0){
                break;
              }

            }
            _greeting='Sun';
          }
          /*if(_counter<=10&&ch==0){
            _incrementCounter();
            if(_counter==10){
                ch=1;
            }
          }
          else {
            _decrementCounter();
            if(_counter==0){
              ch=0;
            }
            
          }
      */},
        tooltip: 'Increment',
        child: Icon(Icons.note_add),
      ),
    );
  }
}
