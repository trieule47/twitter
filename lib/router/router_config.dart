import 'package:twitter/views/home/home_view.dart';
import 'package:twitter/views/detail_view/detail_view.dart';

import 'package:get/get.dart';
class RouterConfig {
  static const ROUTE_SPLASH = '/';
  static const ROUTE_DEMO = 'demo';
  static const ROUTE_MAIN = 'main';
  static const ROUTE_HOME = 'home';
  static const ROUTE_LOGIN = 'login';

  static final route = [
    GetPage(
      name: ROUTE_LOGIN,
      page: () => DetailView(),
    ),
    GetPage(
      name: ROUTE_HOME,
      page: () => HomeView(),
    ),
  ];
}