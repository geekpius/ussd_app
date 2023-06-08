import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ussd_app/services/local_storage_service.dart';
import 'package:ussd_app/utils/app_theme.dart';
import 'package:ussd_app/utils/routes.dart';
import 'package:ussd_app/services/service_locator.dart';
import 'package:ussd_app/view_models/user_view_model.dart';

Future<void> main() async{
  setUpServiceLocator();
  preLoaders();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UserViewModel>(create: (context) => UserViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    fetchLocalStorageData(context);
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child){
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: AppTheme.lightTheme,
        );
      }
    );
  }
}


Future<void> preLoaders() async{
  await dotenv.load();
  await sl.get<LocalStorageService>().init();
}


void fetchLocalStorageData(BuildContext context) {
  context.read<UserViewModel>().iniState();
}