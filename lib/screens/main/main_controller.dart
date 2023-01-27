import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../models/category_model.dart';


class MainController extends GetxController{
  RxList<Category_model> categories=[
    Category_model( "item one",  Color(0xFFfe7743)),
    Category_model( "item one",  Color(0xFF21d0d0)),
    Category_model( "item one",  Color(0xFF895ed1)),

  ].obs;

  RxBool changeShow=true.obs;


  RxList<bool> checkList=[
    false,
    false,
    false
  ].obs;
}