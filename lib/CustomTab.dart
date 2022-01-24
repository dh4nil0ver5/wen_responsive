import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget{
  final String title;

  const CustomTab({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(this.title, style: const TextStyle(fontSize: 17),),
    );
  }
}
