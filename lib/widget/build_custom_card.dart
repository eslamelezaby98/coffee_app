import 'package:flutter/material.dart';


class BuildCustomCard extends StatelessWidget {
  const BuildCustomCard({
    Key? key,
    required this.childWidget,
  }) : super(key: key);
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: Card(child: childWidget),
      ),
    );
  }
}
