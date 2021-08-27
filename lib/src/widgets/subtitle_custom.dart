part of 'widgets.dart';

class SubtitleCustom extends StatelessWidget {

  final double size;
  final String texto;

  const SubtitleCustom({
    @required this.size, 
    @required this.texto, 
  });


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300,
      height: 70,
      padding: EdgeInsets.only(top: 20),
      child: Text(this.texto, 
        style: TextStyle(
          color: Color.fromRGBO(140, 122, 91, 1),
          fontSize: this.size,
          fontWeight:  FontWeight.w900
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}