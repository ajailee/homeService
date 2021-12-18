import 'package:flutter/material.dart';

import 'package:homeservice/widgets/my_bottom_nav_bar.dart';
import 'package:homeservice/widgets/mysearch.dart';
import 'package:homeservice/widgets/offers_list.dart';
import 'package:homeservice/widgets/promo_headlines.dart';
import 'package:homeservice/widgets/services.dart';
import 'package:homeservice/widgets/show_name.dart';
import '../widgets/mytitle.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
          leading: IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
          title: const MyTitle(),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
          bottom: PreferredSize(
            child: const MySearch(),
            preferredSize: Size(
                double.infinity, MediaQuery.of(context).size.height * 0.15),
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: const ShowName(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text('Hi News'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: const OffersList(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: const PromoHeadLines(),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: const Services(),
                    ),
                  ],
                ),
              )
            : SingleChildScrollView(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: const ShowName(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text('Hi News'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: const OffersList(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: const PromoHeadLines(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: const Services(),
                  ),
                ],
              )),
        bottomNavigationBar: const MyBottomNavBar(),
      ),
    );
  }
}
