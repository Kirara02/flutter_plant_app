import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/detail/detail_screen.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            title: "Samantha",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
            image: 'assets/images/image_1.png',
            country: 'Russia',
            price: 440,
          ),
          RecommendPlantCard(
            title: "Samantha",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
            image: 'assets/images/image_2.png',
            country: 'Russia',
            price: 440,
          ),
          RecommendPlantCard(
            title: "Samantha",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
            image: 'assets/images/image_3.png',
            country: 'Russia',
            price: 440,
          ),
          RecommendPlantCard(
            title: "Samantha",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
            image: 'assets/images/image_1.png',
            country: 'Russia',
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? country;
  final int? price;
  final VoidCallback? onPressed;

  const RecommendPlantCard({
    Key? key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed!,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image!),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country!.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button?.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
