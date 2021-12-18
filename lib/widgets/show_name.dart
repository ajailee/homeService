import 'package:flutter/material.dart';

class ShowName extends StatelessWidget {
  const ShowName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            'Hi Ajay 👋 ',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FittedBox(
          child: Text(
            'Need a helping hand today?',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ],
    );
  }
}
