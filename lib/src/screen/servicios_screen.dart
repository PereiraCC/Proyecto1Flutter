import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';

class ServiciosScreen extends StatelessWidget {

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

                TitleCustom(texto: 'Otros Servicios'),

                ImageCustom(urlImage: 'assets/servicios/servicio1.jpg'),

                SubtitleCustom(
                  size: 25, 
                  texto: 'Más desarrollo',
                  center: false,
                ),

                ParrafoCustom(
                  texto : 'Podemos ser su opción para desarrollar en la tecnología de su necesidad, tenemos experiencia en las siguientes tecnologías:',
                ),

                SizedBox(height: 10),

                ParrafoCustom(
                  texto : '■ .NET (Desktop, Web, Móvil) ' + '\n' +
                          '■ Java (Desktop, Web, Móvil)' + '\n' +
                          '■ Html5, CSS3, Bootstrap, JQuery' + '\n' +
                          '■ Classic ASP' + '\n' +
                          '■ C, C++' + '\n' +
                          '■ Visual Basic 6' + '\n' +
                          '■ Entre otras',
                ),

                SizedBox(height: 50),

                FooterCustom(),

                SizedBox(height: 30),

              ],
            ),
          ),
        ),
     ),
   );
  }
}