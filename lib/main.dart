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

  final _controller = PageController(initialPage: initialPage);

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
          _controller.jumpToPage(index);
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
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          return _pages[index % _pages.length];
        },
      ),
      bottomNavigationBar: buildNavBar(context),
    );
  }
}
