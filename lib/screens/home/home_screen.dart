import 'package:flutter/material.dart';
import 'package:flutter_plant_app/components/my_botton_navbar.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/home/components/body.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: const Body(),
      bottomNavigationBar: const MyBottonNavbar(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
