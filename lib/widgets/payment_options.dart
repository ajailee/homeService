import 'package:flutter/material.dart';
import 'package:homeservice/utils/myconst.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({Key? key}) : super(key: key);

  @override
  _PaymentOptionsState createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              id = 0;
            });
          },
          child: Container(
            color: id == 0 ? myGreen : Colors.green.shade50,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            child: const Center(child: Text('Pay Online')),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              id = 1;
            });
          },
          child: Container(
            color: id == 1 ? myGreen : Colors.green.shade50,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            child: const Center(child: Text('Cash On Delivery')),
          ),
        ),
      ],
    );
  }
}
