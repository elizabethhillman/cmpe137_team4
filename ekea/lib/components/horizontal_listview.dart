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
            image_location: 'carousel_images/Furniture.jpeg.webp',
            image_caption: 'Furniture',
          ),
          Category(
            image_location: 'carousel_images/home decor.jpeg.webp',
            image_caption: 'Decor',
          ),
          Category(
            image_location: 'carousel_images/Kitchen & tableware.jpeg.webp',
            image_caption: 'Tableware',
          ),
          Category(
            image_location: 'carousel_images/Beds & Mattresses.jpeg.webp',
            image_caption: 'Beds',
          ),
          Category(
            image_location: 'carousel_images/rugs.jpeg.webp',
            image_caption: 'Rugs',
          ),
          Category(
            image_location: 'carousel_images/Smart home.jpeg.webp',
            image_caption: 'IoT',
          ),
          Category(
            image_location: 'carousel_images/bathroom.jpeg.webp',
            image_caption: 'Bathroom',
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
              title: Image.asset(image_location, width: 100.0, height: 80.0),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
