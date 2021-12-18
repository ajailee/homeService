import 'package:flutter/material.dart';

class OffersList extends StatefulWidget {
  const OffersList({Key? key}) : super(key: key);

  @override
  _OffersListState createState() => _OffersListState();
}

class _OffersListState extends State<OffersList> {
  int _currentIndex = 0;
  final List<String> _list = [
    "Trending",
    "Promotion",
    "Summer Offer",
    "Hot New",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      padding: const EdgeInsets.only(left: 10, right: 10),
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: FilterChip(
            selected: _currentIndex == index,
            selectedColor:
                _currentIndex == index ? Colors.green[200] : Colors.white,
            checkmarkColor: Colors.green,
            label: Text(_list[index]),
            onSelected: (value) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        );
      },
    );
  }
}
