import 'package:get/get.dart';
//USer
class UserModel{
  String id;
  String name;
  String description;
  //danh sach nguoi follow
  var follow = List<dynamic>().obs;
  //set gia tri
  UserModel({this.id, this.name, this.description, this.follow});

}