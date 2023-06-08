
import 'package:flutter/cupertino.dart';
import 'package:ussd_app/models/user_model.dart';
import 'package:ussd_app/services/local_storage_service.dart';
import 'package:ussd_app/view_models/base_view_model.dart';

import '../utils/routes.dart';
import '../services/service_locator.dart';

class UserViewModel extends BaseViewModel{
  final _localStorageService = sl.get<LocalStorageService>();

  iniState(){
    fetchUser();
  }

  UserModel _userModel = UserModel();

  UserModel get getUser => _userModel;

  set setUser(UserModel value){
    _userModel = value;
    notifyListeners();
  }

  bool get isLoggedIn => !_userModel.isEmpty;

  Future<void> login(BuildContext context, {required String phoneNumber}) async {

    setUser = UserModel.fromJson({'phoneNumber': phoneNumber});
    await _localStorageService.encodeAndWrite('user', _userModel.toJson());

    WidgetsBinding.instance.addPostFrameCallback((_) async{
      AppRoute.pushNamed(context, AppRoute.homePage);
    });
  }

  void fetchUser() async{
    _userModel = UserModel.fromJson((await _localStorageService.decodeAndReadMap('user')));
  }

}