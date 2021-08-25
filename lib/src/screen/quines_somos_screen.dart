import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';

class QuienesSomosScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      drawer: DrawerCustom(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 400,
            child: Column(
              children: [

                SubtitleCustom(
                  texto: '¿Quiénes somos?',
                  size: 20,
                  negrita: true,
                ),

                SizedBox(height: 10),

                SubtitleCustom(
                  texto: 'Emprendimiento',
                  size: 18,
                  negrita: false,
                ),

                ParrafoCustom('Colabora Network es un emprendimiento surgido en el año 2020 que brinda servicios de desarrollo de software profesional.'),

                SizedBox(height: 15),

                ParrafoCustom('Nos gusta desarrollar software, es nuestra pasión. También nos gusta ver crecer el negocio de nuestros clientes, por lo que todo trabajo se hace de manera dedicada.'),

                SizedBox(height: 15),

                ParrafoCustom('Nuestro enfoque consiste en contribuir a las PYMES con su área de desarrollo de software, sin limitarnos a este mercado, estando preparados para brindar asesoría en desarrollo a todo tipo de empresas.'),

                SizedBox(height: 50),

                SubtitleCustom(
                  texto: '¿Cómo lo hacemos?',
                  size: 18,
                  negrita: false,
                ),

                SizedBox(height: 10),

                ParrafoCustom('Nuestros servicios están orientados por las mejores prácticas de ingeniería de software y utilizan las metodologías más modernas para el desarrollo. Nuestro sueño es ser especialistas en desarrollo de software para dispositivos móviles, sin limitarnos a este campo de acción. Podemos desarrollar de acuerdo a sus necesidades.'),

                _Imagenes(
                  urlImage: 'assets/quienes_somos/quienes_somos1.jpg',
                  descripcion: 'Sesión de trabajo',
                ),

                _Imagenes(
                  urlImage: 'assets/quienes_somos/quienes_somos2.jpg',
                  descripcion: 'Trabajo en equipo',
                ),

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

class _Imagenes extends StatelessWidget {

  final String urlImage;
  final String descripcion;

  const _Imagenes({
    @required this.urlImage, 
    @required this.descripcion
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [

          Image(  
            image: AssetImage(this.urlImage),
          ),

          SizedBox(height: 10),

          Container(
            width: 240,
            child: Text(this.descripcion,
              style: TextStyle(  
                fontSize: 11,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
