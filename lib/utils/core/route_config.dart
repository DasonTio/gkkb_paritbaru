import 'package:gkkb_paritbaru/screens/auth/login_page.dart';
import 'package:gkkb_paritbaru/screens/auth/login_page_new.dart';
import 'package:gkkb_paritbaru/screens/auth/register_page.dart';
import 'package:gkkb_paritbaru/screens/auth/register_page_new.dart';
import 'package:gkkb_paritbaru/screens/nav/nav_view.dart';
import 'package:gkkb_paritbaru/screens/nav/scanner/scanner_page.dart';

class RouteConfig {
  static String get loginRoute => '/login';
  static get loginPage => LoginPageNew();

  static String get registerRoute => '/register';
  static get registerPage => RegisterPageNew();

  static String get navRoute => '/navigation';
  static get navView => NavView();

  static String get scannerRoute => '/navigation/scanner';
  static get scannerPage => ScannerPage();
}
