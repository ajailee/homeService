import 'package:flutter/material.dart';
import 'package:homeservice/Screen/order_conformation_page.dart';
import 'package:homeservice/Screen/orderscreen.dart';

import './utils/myconst.dart';
import 'Screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: darkTheme,
      theme: lightTheme,
      routes: {
        '/': (ctx) => const HomeScreen(),
        OrderScreen.routeName: (ctx) => const OrderScreen(),
        OrderConformationPage.routeName: (ctx) => const OrderConformationPage()
      },
    );
  }
}
