import 'package:flutter/material.dart';
import 'package:pjj_apps/CustomTab.dart';
import 'package:pjj_apps/content_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key); 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 

  List<ContentView> contentViews = [
    ContentView(tab: CustomTab(title: 'Home'), content: Center(child: Container(color: Colors.green, width: 100, height: 100),),),
  ];
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