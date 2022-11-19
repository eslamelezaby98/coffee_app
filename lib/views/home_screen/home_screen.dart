import 'package:coffee_app/dummy_data/dummy_data.dart';
import 'package:coffee_app/theme/colors.dart';
import 'package:coffee_app/views/home_screen/top_sction_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: secondColor,
        unselectedItemColor: fontColor2,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: "",
          ),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                const TopSectionWidget(),
              ];
            },
            body: TabBarView(
              children: screens,
            ),
          ),
        ),
      ),
    );
  }
}
