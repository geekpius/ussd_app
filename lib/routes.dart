
import 'package:go_router/go_router.dart';
import 'package:ussd_app/screens/error_screen.dart';
import 'package:ussd_app/screens/home_screen.dart';
import 'package:ussd_app/screens/login_screen.dart';

final router = GoRouter(

  initialLocation: '/',

  routes: [
    GoRoute(
      name: AppRoute.login,
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: AppRoute.homePage,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(exception: state.error,),
);

class AppRoute{
  static String get login => 'login';
  static String get homePage => 'home';
}