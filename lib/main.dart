import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ussd_app/routes.dart';
import 'package:ussd_app/services/service_locator.dart';
import 'package:ussd_app/utils/local_storage.dart';

Future<void> main() async{
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child){
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
          ),
        );
      }
    );
  }
}


Future<void> preLoaders() async{
  await dotenv.load();
  await sl.get<LocalStorage>().init();
}