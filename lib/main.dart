import 'package:flutter/material.dart';
import 'package:flutter_proyecto1/src/routes/routes.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colabora Network',
      initialRoute: 'home',
      routes: getRoutes(),
    );
  }
}