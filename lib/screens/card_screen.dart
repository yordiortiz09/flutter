import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CardScreen')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(
            height: 15,
          ),
          CustomCard2(
            imageUrl:
                'https://thumbs.dreamstime.com/b/paisajes-de-yosemite-46208063.jpg',
            title: 'Yosemite',
          ),
          SizedBox(
            height: 15,
          ),
          CustomCard2(
            imageUrl:
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
            title: 'Arbol',
          ),
          SizedBox(
            height: 15,
          ),
          CustomCard2(
            imageUrl:
                'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          CustomCard2(
            imageUrl:
                'https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          CustomCard2(
            imageUrl:
                'https://definicion.de/wp-content/uploads/2009/12/paisaje-1.jpg',
          )
        ],
      ),
    );
  }
}
