import 'package:flutter/material.dart';
import 'package:pjj_apps/CustomTab.dart';
import 'package:pjj_apps/CustomTabBar.dart';
import 'package:pjj_apps/content_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: Center(
        child: Container(color: Colors.green, width: 100, height: 100),
      ),
    ),
    ContentView(
      tab: CustomTab(title: 'Service'),
      content: Center(
        child: Container(color: Colors.green, width: 100, height: 100),
      ),
    ),
    ContentView(
      tab: CustomTab(title: 'Info'),
      content: Center(
        child: Container(color: Colors.green, width: 100, height: 100),
      ),
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 715) {
          return desktopView();
        } else {
          return mobileView();
        }
      }),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[CustomTabBar(controller: tabController, tabs: contentViews.map((e) => e.tab).toList()), Container()],
    );
  }
}
