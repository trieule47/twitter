import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:twitter/views/home/home_view.dart';
import 'package:twitter/router/router_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Twitter',
      initialRoute: RouterConfig.ROUTE_HOME,
      getPages: RouterConfig.route,
    );
  }
}

