import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
