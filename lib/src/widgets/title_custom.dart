part of 'widgets.dart';


class TitleCustom extends StatelessWidget {
  
  final String texto;

  const TitleCustom({
    @required this.texto
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [

          Text(this.texto,
            style: TextStyle(  
              color: Color.fromRGBO(140, 122, 91, 1),
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),
          ),

          Container(
            width: 100,
            child: Divider(
              color: Color.fromRGBO(140, 122, 91, 1),
              thickness: 5,
              height: 25,
            ),
          ),
          
        ],
      ),
    );
  }
}