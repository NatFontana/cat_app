import 'package:cat_app/getxconnection/cat_bindings.dart';
import 'package:cat_app/screens/cat_home_screen.dart';
import 'package:cat_app/screens/meow_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetMaterialApp {
  MyApp({Key? key}) : super(key: key);

  late final bind = CatBindings();

  @override
  List<GetPage>? get getPages => [
        GetPage(
          name: '/',
          page: () => const CatHomeScreen(),
          binding: bind,
        ),
        GetPage(
          name: '/meow_screen',
          page: () => const MeowScreen(),
          binding: bind,
        ),
      ];

  @override
  Bindings? get initialBinding => bind;

  @override
  String? get initialRoute => '/';
}
