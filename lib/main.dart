import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipe_app/models/firstpage.dart';
import 'package:recipe_app/login_page.dart';

import 'package:recipe_app/models/fav.dart';

Future main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(FavAdapter());
  await Hive.openBox<Fav>('fav');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}

