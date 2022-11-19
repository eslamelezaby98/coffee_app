import 'package:coffee_app/theme/colors.dart';
import 'package:coffee_app/widget/build_custom_card.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BuildCustomCard(
          childWidget: Icon(
            Icons.dashboard_rounded,
            size: 40,
            color: hintColor,
          ),
        ),
        BuildCustomCard(
          childWidget: Container(
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/profile_image.jpeg",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
