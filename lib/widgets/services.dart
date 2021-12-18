import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      scrollDirection: Axis.horizontal,
      children: [
        Category(
          title: "Massage",
          icon: Icons.person,
        ),
        Category(
          title: "AC",
          icon: Icons.ac_unit,
        ),
        Category(
          title: "Paint",
          icon: Icons.format_paint,
        ),
        Category(
          title: "Car",
          icon: Icons.car_repair,
        ),
        Category(
          title: "Bike",
          icon: Icons.electric_bike,
        ),
      ],
    );
  }
}
