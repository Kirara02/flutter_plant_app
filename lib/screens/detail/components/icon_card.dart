import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCard extends StatelessWidget {
  final String? icon;
  const IconCard({
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: const Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white.withOpacity(0.20),
          ),
        ],
      ),
      child: SvgPicture.asset(icon!),
    );
  }
}
