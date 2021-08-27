import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';

class AndroidScreen extends StatelessWidget {

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

                TitleCustom(texto: 'Desarrollo Android'),

                ImageCustom(urlImage: 'assets/android/android1.jpg'),

                SizedBox(height: 20),

                SubtitleCustom(
                  size: 25, 
                  texto: '¿Te gusta esta aplicación?',
                  center: true,
                ),

                SizedBox(height: 10),

                ParrafoCustom('La desarrollamos completamente en Android Nativo. Tenemos experiencia de desarrollo en esta área, creando aplicaciones desde cero o dando mantenimiento a aplicaciones existentes.'),               

                SizedBox(height: 5),

                ParrafoCustom('Podemos integrar la aplicación con el sistema principal de su empresa, mediante tecnologías Rest, que funcione completamente en línea o que incluso pueda trabajar Off-Line.'),               

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