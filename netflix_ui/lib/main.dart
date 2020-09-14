import 'package:flutter/material.dart';

import './ui_components/translucent_app_bar.dart';

void main() {
  runApp(MaterialApp(home: NetflixApp()));
}

class NetflixApp extends StatefulWidget {
  @override
  _NetflixAppState createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
  double _offset = 0.0;
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          print(_scrollController.offset);
          _offset = _scrollController.offset;
        });
      });
    print('_scrollController $_scrollController');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.0),
        child: TranslucentAppBar(offset: _offset),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.cast),
        onPressed: () => print('Pressed cast'),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 800,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
