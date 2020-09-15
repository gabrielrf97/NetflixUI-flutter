import 'package:flutter/material.dart';

class HeaderPlayButton extends StatelessWidget {
  final Function onTap;
  final String title;

  HeaderPlayButton({this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: MaterialButton(
        onPressed: onTap,
        padding: EdgeInsets.fromLTRB(20, 8, 28, 8),
        child: Row(
          children: [
            Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 22, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
