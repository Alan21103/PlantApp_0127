import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: kPrimaryColor,
                  ),
                  onPressed: () {},
                  child: const Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
