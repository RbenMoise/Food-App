// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:ini/pages/home/food/fooddetail.dart';
import 'package:ini/pages/home/food/recommendedfooddetail.dart';
import 'helper/dependensies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: RecommendedFoodDetails());
  }
}
//stopped at 6:30 in the model json to dart
