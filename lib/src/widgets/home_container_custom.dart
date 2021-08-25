
part of 'widgets.dart';


class HomeContainerCustom extends StatelessWidget {

  final String urlImage;
  final String titulo;
  final String descripcion;
  final String urlPage;

  const HomeContainerCustom({
    @required this.urlImage, 
    @required this.titulo, 
    @required this.descripcion, 
    @required this.urlPage
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          padding: EdgeInsets.all(50),
          child: Image(  
            image: AssetImage(this.urlImage),
          ),
        ),

        SizedBox(height: 20),

        Container(
          width: 260,
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Color.fromRGBO(140, 122, 91, 1),
              textStyle: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline
              ),
              alignment: Alignment.centerLeft,
            ),
            child: Text(this.titulo),
            onPressed: () => Navigator.pushNamed(context, this.urlPage),
          ),
        ),

        SizedBox(height: 30),

        Container(
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(this.descripcion, 
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            // textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}