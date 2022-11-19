import 'package:coffee_app/theme/colors.dart';
import 'package:flutter/material.dart';

class ProductPreviewWidget extends StatelessWidget {
  const ProductPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const ProductCardWidget(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Special for you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: whiteColor,
                fontSize: 20,
              ),
            ),
          ),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: hintColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/coffee.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Text(
                              "5 Coffee Beans You Must Try!",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 350,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xff0F1218),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          elevation: 2,
                          shadowColor: Colors.amber[200],
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/coffee.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Cappuccino",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        "With Oat Milk",
                        style: TextStyle(
                          color: fontColor2,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.attach_money,
                                color: secondColor,
                              ),
                              Text(
                                "4.22",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                            width: 50,
                            child: Card(
                              color: secondColor,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
