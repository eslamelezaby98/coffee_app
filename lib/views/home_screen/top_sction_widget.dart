import 'package:coffee_app/theme/colors.dart';
import 'package:coffee_app/widget/build_app_bar.dart';
import 'package:flutter/material.dart';

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 310,
      backgroundColor: mainColor,
      bottom: const TabBar(
        isScrollable: true,
        indicatorColor: secondColor,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Tab(text: "Cappuccino"),
          Tab(text: "Espresso"),
          Tab(text: "Latte"),
          Tab(text: "Americano"),
          Tab(text: "Mocha"),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //? app bar
            const BuildAppBar(),

            //? header
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Find the best \ncoffee for you",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //? search
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: hintColor,
                shadowColor: mainColor,
                elevation: 0,
                child: TextFormField(
                  cursorColor: fontColor2,
                  style: const TextStyle(color: fontColor2),
                  decoration: const InputDecoration(
                    hintText: "Find your coffee...",
                    prefixIcon: Icon(Icons.search, color: fontColor2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
