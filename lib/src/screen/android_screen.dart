import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';

class AndroidScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      drawer: DrawerCustom(),
      body: Center(
        child: Text('Android Screen'),
     ),
   );
  }
}