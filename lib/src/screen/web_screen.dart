import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';

class WebScreen extends StatelessWidget {

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

                TitleCustom(texto: 'Desarrollo Web'),

                ImageCustom(urlImage: 'assets/web/web1.png'),

                SubtitleCustom(
                  size: 18, 
                  texto: 'Servicio Web y Rest API',
                  center: true,
                ),

                ParrafoCustom(
                  texto : 'Si requiere interoperabilidad e intercambio de información entre sus sistemas, podemos crear todo lo necesario para que sea una realidad, mediante servicios Web en diferentes tecnologías o API Rest.',
                  center: true,
                ),

                SizedBox(height: 40),

                ImageCustom(urlImage: 'assets/web/web2.png'),

                SubtitleCustom(
                  size: 18, 
                  texto: 'Sitios Web Responsivos',
                  center: true,
                ),

                ParrafoCustom(
                  texto : 'Podemos diseñar sistemas Web 100% responsivos, para que pueda visualizarlos tantos de sus estaciones de trabajo como desde sus dispositivos móviles.',
                  center: true,
                ),

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