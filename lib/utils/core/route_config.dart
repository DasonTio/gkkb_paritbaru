import 'package:gkkb_paritbaru/screens/auth/login_page.dart';
import 'package:gkkb_paritbaru/screens/auth/register_page.dart';
import 'package:gkkb_paritbaru/screens/nav/nav_view.dart';

class RouteConfig {
  static String get loginRoute => '/login';
  static get loginPage => LoginPage();

  static String get registerRoute => '/register';
  static get registerPage => RegisterPage();

  static String get navRoute => '/navigation';
  static get navView => NavView();
}
