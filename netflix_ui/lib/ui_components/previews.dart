import 'package:flutter/material.dart';
import 'package:netflix_ui/ui_components/content_header.dart';
import 'package:netflix_ui/ui_components/section_title.dart';

class Previews extends StatelessWidget {

  final List<String> previewItems = [
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/ee5dabef-patrieducadora_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/c9bcf493-seriebrasil_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/ee5dabef-patrieducadora_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/c9bcf493-seriebrasil_1000000000000000000028.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Previews',),
        Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: previewItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: GestureDetector(
                    onTap: ()=>{print('Preview pressed $index')},
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3.0),
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(previewItems[index]),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

// ListView.builder(itemBuilder: (context, index) {
// return Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50)
// ),
// child: Image(
// width: 100,
// height: 100,
// image: NetworkImage(
// previewItems[index]
// ),
// ),
// );
// },
// itemCount: previewItems.length,),
