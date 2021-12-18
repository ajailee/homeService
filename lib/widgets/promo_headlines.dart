import 'package:flutter/material.dart';

class PromoHeadLines extends StatelessWidget {
  const PromoHeadLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: index % 2 == 0
                      ? [Colors.green, Colors.green.shade300]
                      : [Colors.amber.shade400, Colors.amber.shade300])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  'AService',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const Spacer(),
              FittedBox(
                child: Text(
                  'Get All Your Things Fixed With AServices at 10% Discount',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const Spacer(),
              FittedBox(
                child: Text(
                  '*Valid till New Year',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
