import 'package:flutter/material.dart';

void main() {
  runApp(NetflixApp());
}

class NetflixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NetflixUI'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black54,
          child: Icon(Icons.share),
        ),
      ),
    );
  }
}
