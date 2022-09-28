import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/detail/components/icon_card.dart';
import 'package:flutter_plant_app/screens/detail/components/image_and_icons.dart';
import 'package:flutter_plant_app/screens/detail/components/title_and_price.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: kDefaultPadding),
                width: size.width / 2,
                height: 85,
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
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
                  child: FlatButton(
                onPressed: () {},
                child: const Text("Description"),
              ))
            ],
          )
        ],
      ),
    );
  }
}
