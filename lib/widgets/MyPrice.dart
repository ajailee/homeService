import 'package:flutter/material.dart';

class MyPrice extends StatelessWidget {
  const MyPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              'Working Hours ',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline1!.color,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '(2 hours)',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline2!.color,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              ' 20\$',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              'Service Charge',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline1!.color,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '(2 hours)',
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline2!.color,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              ' 0\$',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
