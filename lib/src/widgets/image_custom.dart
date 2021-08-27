part of 'widgets.dart';


class ImageCustom extends StatelessWidget {
  
  final String urlImage;

  const ImageCustom({
    @required this.urlImage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Image(  
        image: AssetImage(this.urlImage),
      ),
    );
  }
}
