
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ussd_app/views/error_screen.dart';
import 'package:ussd_app/views/home_screen.dart';
import 'package:ussd_app/views/login_screen.dart';
import 'package:ussd_app/views/splash_screen.dart';

final router = GoRouter(
  navigatorKey: AppRoute.navigatorKey,

  initialLocation: '/',

  routes: [
    GoRoute(
      name: AppRoute.splash,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: AppRoute.login,
      path: '/login',
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
  static String get splash => 'splash';
  static String get login => 'login';
  static String get homePage => 'home';


  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static void go(BuildContext context, String location, {Object? extra}){
    context.go(location, extra: extra);
  }

  static Future<Object?> pushNamed(BuildContext context, String routeName, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) => context.pushNamed(
    routeName,
    pathParameters: pathParameters,
    queryParameters: queryParameters,
    extra: extra,
  );

  static void pushReplacementNamed(BuildContext context, String routeName, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) => context.pushReplacementNamed(
    routeName,
    pathParameters: pathParameters,
    queryParameters: queryParameters,
    extra: extra,
  );

  static void pop(BuildContext context, [Object? result]){
    context.pop(result);
  }


}