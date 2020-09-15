import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {

  final String title;

  SectionTitle({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
    );
  }
}
