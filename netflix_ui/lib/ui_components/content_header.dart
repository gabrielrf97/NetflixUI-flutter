import 'package:flutter/material.dart';

import 'header_vertical_button.dart';
import 'header_play_button.dart';

class ContentHeader extends StatelessWidget {
  final headerImageUrl =
      'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/009fb9c5-teatro-das-tesouras_1000000000000000000028.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(headerImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Column(
            children: [
              SizedBox(
                width: 250,
                height: 80,
                child: Text(
                  'O Teatro das tesouras',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeaderVerticalButton(
                    title: 'List',
                    icon: Icons.add,
                    onTap: () => print('List'),
                  ),
                  HeaderPlayButton(
                    title: 'Play',
                    onTap: () => print('Play'),
                  ),
                  HeaderVerticalButton(
                    title: 'Info',
                    icon: Icons.info_outline,
                    onTap: () => print('Info'),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
