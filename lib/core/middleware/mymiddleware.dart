import 'package:clinic/core/consts/consts.dart';
import 'package:clinic/core/services/prefrences.services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find() ; 

  @override
  RouteSettings? redirect(String? route) {
     if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return const RouteSettings(name: AppRoutes.loginScreen) ; 
     }
  }
}