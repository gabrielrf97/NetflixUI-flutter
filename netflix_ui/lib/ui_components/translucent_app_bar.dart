import 'package:flutter/material.dart';

class TranslucentAppBar extends StatelessWidget {
  final double offset;

  TranslucentAppBar({@required this.offset});

  Widget build(BuildContext context) {
    print('offset $offset');
    return AppBar(
      backgroundColor:
          Colors.black.withOpacity((offset / 350).clamp(0, 1).toDouble()),
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Icon(Icons.tv),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarItem(
                  title: 'TV Shows',
                  onTap: () => print('Tv Shows'),
                ),
                _AppBarItem(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _AppBarItem(
                  title: 'My list',
                  onTap: () => print('My list'),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class _AppBarItem extends StatelessWidget {
  final String title;
  final Function onTap;

  _AppBarItem({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
