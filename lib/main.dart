import 'package:example_food_app/modules/home/home_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'application/core/theme.dart';
import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const HomePage(),
      defaultTransition: Transition.fade,
    );
  }
}
