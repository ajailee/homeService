import 'package:flutter/material.dart';
import 'package:homeservice/Screen/orderscreen.dart';

class Category extends StatelessWidget {
  final IconData icon;
  final String title;

  const Category({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(OrderScreen.routeName),
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
                borderOnForeground: true,
                shape: const CircleBorder(side: BorderSide.none),
                shadowColor: Colors.black,
                elevation: 10,
                child: Icon(
                  icon,
                  size: 35,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
