part of 'widgets.dart';

class ParrafoCustom extends StatelessWidget {

  final String texto;

  const ParrafoCustom(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Text(this.texto, 
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}