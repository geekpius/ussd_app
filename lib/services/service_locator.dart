
import 'package:get_it/get_it.dart';
import 'package:ussd_app/utils/shared_preference_store.dart';


GetIt sl = GetIt.instance;

void setUpServiceLocator(){
  //this is coming from API so I used lazy
  // sl.registerLazySingleton<DynamicLinkService>(() =>DynamicLinkService());;
  sl.registerSingleton<SharedPrefStore>(SharedPrefStore());
}