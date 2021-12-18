import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:homeservice/Screen/order_conformation_page.dart';
import 'package:homeservice/utils/myconst.dart';
import 'package:homeservice/widgets/MyPrice.dart';
import 'package:homeservice/widgets/map_view.dart';
import 'package:homeservice/widgets/order_details.dart';
import 'package:homeservice/widgets/payment_options.dart';

class OrderScreen extends StatefulWidget {
  static String routeName = '/orderScreen';
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDownBig(
                child: const SizedBox(
                  height: 200,
                  child: MapView(),
                ),
              ),
              FadeInRightBig(child: const OrderDetails()),
              FadeInLeftBig(child: const MyPrice()),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Total',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '2 hours',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Spacer(),
                  Text(
                    ' 20\$',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Divider(),
              FadeInUp(child: const PaymentOptions()),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: myGreen),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(OrderConformationPage.routeName);
                      },
                      child: const Expanded(child: Text('Order'))),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
