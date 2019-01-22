// Vendor
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  MapPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        centerTitle: true,
        primary: true,
      ),
      body: Center(
        child: Text('Map'),
      ),
    );
  }
}