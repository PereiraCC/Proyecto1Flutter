import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';

class FlutterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      drawer: DrawerCustom(),
      body: SafeArea(
        child: SingleChildScrollView(  
          physics: BouncingScrollPhysics(),
          child: Container(  
            child: Column(  
              children: [

                TitleCustom(texto: 'Desarrollo Flutter'),

                ImageCustom(urlImage: 'assets/flutter/flutter1.jpg'),

                SizedBox(height: 20),

                SubtitleCustom(
                  size: 25, 
                  texto: '¿Necesita varias plataformas?',
                  center: false,
                ),

                SizedBox(height: 10),

                ParrafoCustom('Si requiere que su aplicación sea diseñada para varias plataformas y tener una experiencia única: también podemos hacerlo.'),               

                SizedBox(height: 5),

                ParrafoCustom('Con Flutter, podemos crear su aplicación para Android e iOS de manera rápida, eficiente y segura. Del mismo modo podemos integrarla con la aplicación principal de su empresa, logrando que trabaje totalmente en línea.'),               

                SizedBox(height: 50),

                FooterCustom(),

                SizedBox(height: 30),

              ],
            ),
          ),
        )
     ),
   );
  }
}