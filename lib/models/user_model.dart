
class UserModel{
  UserModel({
    this.phoneNumber,
  });

  final String? phoneNumber;

  bool get isEmpty => phoneNumber == null || phoneNumber!.isEmpty;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      phoneNumber: json['phoneNumber']?? '',);
  }


  Map<String, dynamic> toJson() {
    return {
      "phoneNumber": phoneNumber,
     };
  }


}