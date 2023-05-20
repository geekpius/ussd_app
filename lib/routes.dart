
import 'package:go_router/go_router.dart';
import 'package:ussd_app/screens/error_screen.dart';
import 'package:ussd_app/screens/home_screen.dart';

final router = GoRouter(

  initialLocation: '/',

  routes: [
    GoRoute(
      name: RouteName.homePage,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
  errorBuilder: (context, state) => ErrorScreen(exception: state.error,),
);

class RouteName{
  static String get homePage => 'home_screen';
}