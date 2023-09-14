import 'package:flutter/material.dart';
import 'package:ott_platform/controller/OTTController.dart';
import 'package:ott_platform/utils/MyRoutes.dart';
import 'package:ott_platform/views/screens/Detail_Page.dart';
import 'package:ott_platform/views/screens/HomePage.dart';
import 'package:ott_platform/views/screens/newPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => OTTController()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.home,
      routes: {
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.newPage: (context) => Carousel(),
        MyRoutes.detailPage: (context) => DetailPage(),
      },
    );
  }
}
