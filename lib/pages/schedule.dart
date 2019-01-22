// Vendor
import 'package:flutter/material.dart';

// Application
import 'package:flutter_io18_app/pages/schedule/day.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Schedule'),
          centerTitle: true,
          primary: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Day 1'),
              Tab(text: 'Day 2'),
              Tab(text: 'Day 3'),
              Tab(text: 'Agenda'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Day(title: 'Day 1'),
            Day(title: 'Day 2'),
            Day(title: 'Day 3'),
            Day(title: 'Agenda'),
          ],
        ),
      ),
    );
  }
}