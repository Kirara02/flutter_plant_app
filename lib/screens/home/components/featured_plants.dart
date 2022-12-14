import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(image: 'assets/images/bottom_img_1.png', onPressed: () {},),
          FeaturedPlantCard(image: 'assets/images/bottom_img_2.png', onPressed: () {},),
        ],
      ),
    );
  }
}


class FeaturedPlantCard extends StatelessWidget {
  final String? image;
  final VoidCallback? onPressed;

  const FeaturedPlantCard({
    Key? key,
    this.image,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
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
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}