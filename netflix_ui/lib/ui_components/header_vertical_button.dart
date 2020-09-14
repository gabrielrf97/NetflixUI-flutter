import 'package:flutter/material.dart';

class HeaderVerticalButton extends StatelessWidget {

  final String title;
  final Function onTap;
  final IconData icon;

  HeaderVerticalButton({this.title, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Column(
        children: [
          Icon(icon, color: Colors.white,),
          SizedBox(height: 4.0,),
          Text(title, style: TextStyle(color: Colors.white),)
        ],
      ),
      onPressed: onTap,
    );
  }
}