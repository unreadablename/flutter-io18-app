import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
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
  static int initialPage = 1;
  int _currentPage = initialPage;

  final List<Widget> _pages = <Widget>[
    Page(title: 'Info'),
    Page(title: 'Schedule'),
    Page(title: 'Map'),
  ];

  Widget buildNavBar(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.info),
          title: const Text('Info'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.today),
          title: const Text('Schedule'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.location_on),
          title: const Text('Map'),
        ),
      ],
      currentIndex: _currentPage,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentPage = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: buildNavBar(context),
    );
  }
}
