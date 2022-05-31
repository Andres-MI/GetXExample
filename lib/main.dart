import 'package:estados/pages/second_page.dart';
import 'package:flutter/material.dart';

import 'package:estados/pages/first_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page1',
      routes: {
        'page1': ( _ ) => FirstPage(),
        'page2': ( _ ) => SecondPage(),
      },
    );
  }
}