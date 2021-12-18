import 'package:flutter/material.dart';
import 'package:homeservice/utils/myconst.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Details',
                style: Theme.of(context).textTheme.headline2,
              ),
              Icon(
                Icons.edit,
                color: Theme.of(context).textTheme.headline2!.color,
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ListTile(
            trailing: Text(
              '10\$/hr',
              style: Theme.of(context).textTheme.headline2,
            ),
            subtitle: const Text('Service from AService'),
            leading: Icon(
              Icons.ac_unit,
              color: myGreen,
            ),
            title: Text(
              'One Ac Service',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ListTile(
            trailing: Text(
              '10\$/hr',
              style: Theme.of(context).textTheme.headline2,
            ),
            subtitle: const Text('Service from AService'),
            leading: Icon(
              Icons.ac_unit,
              color: myGreen,
            ),
            title: Text(
              'Home Cleaning',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ],
    );
  }
}
