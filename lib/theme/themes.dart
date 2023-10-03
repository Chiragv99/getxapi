import 'package:flutter/material.dart';
import 'package:getxapi/models/themes_model.dart';

List<ThemesModel> listOfThemes = [

  /// First Color Pallet
  ThemesModel(
    titleColor: Colors.black,
    subTitlelColor: Colors.white60,
    bG: const Color(0xffD8E9A8),
    iconColor: Colors.black87,
    appBarColor: const Color(0xff3E065F),
    cardColor: const Color(0xff700B97),
    buttonBg: const Color(0xff342056),
    headerBg: const Color(0xff8c7bd3),
    progressbarBg: const Color(0xff8c7bd3),
    titleSize: 18
  ),

  /// Second Color Pallet
  ThemesModel(
    titleColor: Colors.grey ,
    subTitlelColor: const Color.fromARGB(255, 174, 184, 145),
    bG: const Color(0xFFFAFAFA),
    iconColor: const Color(0xffD8E9A8),
    appBarColor: const Color(0xff1E5128),
    cardColor: const Color(0xff4E9F3D),
    buttonBg: const Color(0xffFF0000),
    headerBg: const Color(0xffb7c786),
     progressbarBg: const Color(0xffFF0000),
     titleSize: 30
  )
];