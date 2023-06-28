import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/route_config.dart';
import 'package:gkkb_paritbaru/utils/data/prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isAuthenticated = await Prefs.getBool(key: "isAuthenticated");
  if (isAuthenticated) {
    runApp(MyApp(routes: RouteConfig.homeRoute));
  } else {
    runApp(MyApp(routes: RouteConfig.loginRoute));
  }
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
    required this.routes,
  }) : super(key: key);

  final String routes;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: primaryColor,
      ),
      initialRoute: routes,
      routes: {
        /**
         * Auth Routing
         */
        RouteConfig.registerRoute: (context) => RouteConfig.registerPage,
        RouteConfig.loginRoute: (context) => RouteConfig.loginPage,

        /**
         * Home Routing
         */
        RouteConfig.homeRoute: (context) => RouteConfig.homePage,
      },
    );
  }
}
