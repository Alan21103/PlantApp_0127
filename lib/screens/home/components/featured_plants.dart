import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: _emptyPress,
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: _emptyPress,
          ),
        ],
      ),
    );
  }

  static void _emptyPress() {}
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    required this.image,
    required this.press,
    super.key,
  });

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
