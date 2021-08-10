import 'package:flutter/material.dart';

class listviewh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          category(
            image_location: 'image/pp.jpg',
            image_caption: 'shirt',
          ),
          category(
            image_location: 'image/dresses.jpg',
            image_caption: 'dresses',
          ),
          category(
            image_location: 'image/ss.jpg',
            image_caption: 'shoes',
          ),
          category(
            image_location: 'image/jj.png',
            image_caption: 'jeans',
          ),
          category(
            image_location: 'image/jacket.png',
            image_caption: 'jacket',
          ),
          category(
            image_location: 'image/baag.png',
            image_caption: 'bag',
          ),
        ],
      ),
    );
  }
}

class category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
