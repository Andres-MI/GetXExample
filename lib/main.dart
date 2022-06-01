import 'package:estados/pages/second_page.dart';
import 'package:flutter/material.dart';

import 'package:estados/pages/first_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/page1',
      // routes: {
      //   'page1': ( _ ) => FirstPage(),
      //   'page2': ( _ ) => SecondPage(),
      // },
      getPages: [
        GetPage(name: '/page1', page: () => FirstPage()),
        GetPage(name: '/page2', page: () => SecondPage())
      ],
    );
  }
}
