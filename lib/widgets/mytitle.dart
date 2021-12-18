import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(Icons.circle,
                size: MediaQuery.of(context).size.width * 0.12,
                color: Theme.of(context).primaryColor),
            Positioned(
              child: Text('Ho', style: Theme.of(context).textTheme.bodyText1),
            ),
          ],
        ),
        Text(
          'me Service',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText2!.color == Colors.black
                ? Colors.white
                : Theme.of(context).textTheme.bodyText2!.color,
          ),
        ),
      ],
    );
  }
}
