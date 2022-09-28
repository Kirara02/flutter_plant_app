import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/home/components/featured_plants.dart';
import 'package:flutter_plant_app/screens/home/components/header_with_search_box.dart';
import 'package:flutter_plant_app/screens/home/components/recommend_plant.dart';
import 'package:flutter_plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", onPressed: () {}),
          const RecommendPlant(),
          TitleWithMoreBtn(title: "Featured Plants", onPressed: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}