import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/clothesSketches/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'images/clothesSketches/dress.png',
            image_caption: 'Dresses',
          ),
          Category(
            image_location: 'images/clothesSketches/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'images/clothesSketches/jacket.png',
            image_caption: 'Jackets',
          ),
          Category(
            image_location: 'images/clothesSketches/shoe.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/clothesSketches/pants.png',
            image_caption: 'Pants',
          ),
          Category(
            image_location: 'images/clothesSketches/necklace.png',
            image_caption: 'Accessory',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_caption, required this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
            width: 100.0,
            height: 80.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}
