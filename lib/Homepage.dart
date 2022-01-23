import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key); 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar( 
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth>715) {
            return desktopView();
          } else {
            return mobileView();
          }
        }
      ),
    );
  }

  Widget mobileView() {
    return Container(
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  Widget desktopView() {
    return Container();
  }
}