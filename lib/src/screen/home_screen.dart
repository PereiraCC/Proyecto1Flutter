import 'package:flutter/material.dart';

import 'package:flutter_proyecto1/src/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      drawer: DrawerCustom(),
      body: SafeArea(
        child: SingleChildScrollView(  
          physics: BouncingScrollPhysics(),
          child: Column(  
            children: [

              _ImagePrincipal(),

              SizedBox(height: 10),

              _LabelsCustomHome(
                titulo: 'Misión',
                descripcion: 'Apoyar a las empresas con necesidades de desarrollo de sistemas enfocándose en tecnologías móviles',
              ),
             
              SizedBox(height: 50),
              
              HomeContainerCustom(
                urlImage: 'assets/home/home2.jpg', 
                titulo: 'Desarrollo Android', 
                descripcion: 'Desarrollo de aplicaciones nativas para la plataforma Android ',
                urlPage: 'android',
              ),
              
              SizedBox(height: 20),

              HomeContainerCustom(
                urlImage: 'assets/home/home3.jpg', 
                titulo: 'Desarrollo Flutter', 
                descripcion: 'Desarrollo de aplicaciones multiplataforma (Android e IOS) en Flutter',
                urlPage: 'flutter',
              ),

              SizedBox(height: 20),

              HomeContainerCustom(
                urlImage: 'assets/home/home4.jpg', 
                titulo: 'Desarrollo Web', 
                descripcion: 'Desarrollo de sistemas Web responsivos, así como servicios Web y Rest API',
                urlPage: 'web',
              ),

              SizedBox(height: 20),

              HomeContainerCustom(
                urlImage: 'assets/home/home5.jpg', 
                titulo: 'Otros servicios', 
                descripcion: 'Desarrollamos en el lenguaje que tenga necesidad, contáctenos para brindar la asesoría',
                urlPage: 'servicios',
              ),

              SizedBox(height: 100),

              _LabelsCustomHome(
                titulo: '¿Preguntas?',
                descripcion: 'Contacte al consultor Gabriel González al correo electrónico: ggonzalez@colaboranetwork.com',
              ),
            
              SizedBox(height: 30),

              _ButtonContactar(),

              SizedBox(height: 30),

              FooterCustom(),

              SizedBox(height: 30),

            ],
          ),
        ),
      )
    );
  }
}

class _ButtonContactar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(  
           primary: Color.fromRGBO(140, 122, 91, 1),
        ),
        child: Text('Contactar'),
        onPressed: () {}, 
      ),
    );
  }
}

class _LabelsCustomHome extends StatelessWidget {

  final String titulo;
  final String descripcion;

  const _LabelsCustomHome({
    @required this.titulo, 
    @required this.descripcion
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(this.titulo, 
          style: TextStyle(
            color: Color.fromRGBO(140, 122, 91, 1), 
            fontSize: 20
          )
        ),

        SizedBox(height: 40),

        Container(
          width: 300,
          child: Text(this.descripcion, 
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontStyle: FontStyle.italic
            ),

          ),
        ),
      ],
    );
  }
}

class _ImagePrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          color: Colors.black,
          child: Opacity(
            opacity: 0.5,
            child: Image(  
              image: AssetImage('assets/home/home1.jpg'),
            ),
          ),
        ),

        Container(
          height: 300,
          // margin: EdgeInsets.symmetric(vertical: 135, horizontal: 90),
          alignment: Alignment.center,
          child:  Text('Colabora Network', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        ),

        Container(
          height: 400,
          alignment: Alignment.center,
          child:  Text('Apoyo en desarrollo de Sistemas', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal)),
        ),
        

      ] 
    );
  }
}
