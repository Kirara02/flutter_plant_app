import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(text: title),
          const Spacer(),
          TextButton(
            onPressed:onPressed,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "More",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  final String text;
  const TitleWithCustomUnderLine({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 5,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}