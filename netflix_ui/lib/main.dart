import 'package:flutter/material.dart';

import 'package:netflix_ui/ui_components/translucent_app_bar.dart';
import 'package:netflix_ui/ui_components/content_header.dart';
import 'package:netflix_ui/ui_components/previews.dart';
import 'package:netflix_ui/ui_components/contents.dart';

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
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
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
            child: Column(
              children: [
                ContentHeader(),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Previews(),
            ),
          ),
          _Section(title: 'Movies', isExpanded: false,),
          _Section(title: 'Originals', isExpanded: true,),
          _Section(title: 'Series', isExpanded: false,),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {

  final String title;
  final bool isExpanded;

  _Section({@required this.title, @required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 20),
      sliver: SliverToBoxAdapter(
        child: Contents(title: title, isExpanded: isExpanded),
      ),
    );
  }
}
