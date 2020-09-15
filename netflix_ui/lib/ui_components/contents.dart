import 'package:flutter/material.dart';
import 'package:netflix_ui/ui_components/section_title.dart';

class Contents extends StatelessWidget {

  final List<String> previewItems = [
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/c9bcf493-seriebrasil_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/ee5dabef-patrieducadora_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/c9bcf493-seriebrasil_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/ee5dabef-patrieducadora_1000000000000000000028.png',
    'https://d9hhrg4mnvzow.cloudfront.net/site.brasilparalelo.com.br/series/c9bcf493-seriebrasil_1000000000000000000028.png'
  ];

  final bool isExpanded;
  final String title;

  Contents({@required this.title, @required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: title,),
        Container(
          height: isExpanded ? 450 : 180,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: previewItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: GestureDetector(
                    onTap: ()=>{print('Preview pressed $index')},
                    child: Container(
                      width: isExpanded ? 250 : 120,
                      height: isExpanded ? 460 : 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular( isExpanded ? 18.0 : 8.0)),
                        color: Colors.black,
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
