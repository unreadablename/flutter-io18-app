// Vendor
import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  final String title;
  Day({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$title. ${index + 1}'),
        );
      },
    );
  }
}