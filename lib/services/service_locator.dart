
import 'package:get_it/get_it.dart';
import 'package:ussd_app/services/local_storage_service.dart';
import 'package:ussd_app/view_models/user_view_model.dart';


GetIt sl = GetIt.instance;

void setUpServiceLocator(){
  //this is coming from API so I used lazy
  // sl.registerLazySingleton<DynamicLinkService>(() =>DynamicLinkService());;
  sl.registerSingleton<LocalStorageService>(LocalStorageService());
  sl.registerSingleton<UserViewModel>(UserViewModel());
}