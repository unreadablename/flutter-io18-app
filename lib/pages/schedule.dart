import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Schedule'),
      ),
    );
  }
}