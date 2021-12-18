import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class OrderConformationPage extends StatelessWidget {
  static String routeName = '/orderconformationPage';
  const OrderConformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(elevation: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FadeInUpBig(
            child: Bounce(
              infinite: true,
              child: Icon(
                Icons.check_circle,
                size: MediaQuery.of(context).size.height * 0.4,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'Your Order is Confirmed Our Service Agent will Reach You',
            style: Theme.of(context).textTheme.headline1,
          )
        ],
      ),
    );
  }
}
