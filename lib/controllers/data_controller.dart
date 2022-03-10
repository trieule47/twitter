import 'package:flutter/material.dart';
import 'package:twitter/models/user_model.dart';
import 'package:get/get.dart';

class DataControl extends GetxController {
  var ListFollowUse = List<UserModel>().obs();

  void onInit(){
    super.onInit();
  }
}
