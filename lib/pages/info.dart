import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  InfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Info'),
      ),
    );
  }
}