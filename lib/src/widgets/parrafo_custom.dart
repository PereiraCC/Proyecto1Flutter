part of 'widgets.dart';

class ParrafoCustom extends StatelessWidget {

  final String texto;
  final bool center;

  const ParrafoCustom({
    @required this.texto, 
    this.center = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Text(this.texto, 
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300
        ),
        textAlign: (this.center) ? TextAlign.center : TextAlign.start
      ),
    );
  }
}