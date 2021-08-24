

import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/screen/home_screen.dart';
import 'package:flutter_proyecto1/src/screen/quines_somos_screen.dart';
import 'package:flutter_proyecto1/src/screen/android_screen.dart';
import 'package:flutter_proyecto1/src/screen/flutter_screen.dart';
import 'package:flutter_proyecto1/src/screen/web_screen.dart';
import 'package:flutter_proyecto1/src/screen/servicios_screen.dart';

Map<String, WidgetBuilder> getRoutes() {

  return <String, WidgetBuilder> {
    'home'          : (_) => HomeScreen(),
    'quienes_somos' : (_) => QuienesSomosScreen(),
    'android'       : (_) => AndroidScreen(),
    'flutter'       : (_) => FlutterScreen(),
    'web'           : (_) => WebScreen(),
    'servicios'     : (_) => ServiciosScreen(),
  };

}