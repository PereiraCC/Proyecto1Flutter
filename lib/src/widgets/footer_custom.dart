part of 'widgets.dart';

class FooterCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(  
        children: [

          _TextCustom(data: 'ggonzalez@colaboranetwork.com'),

          _TextCustom(data: 'colaboranetwork.com'),

          Text('+50671077660',
            style: TextStyle(  
              color: Colors.black,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}

class _TextCustom extends StatelessWidget {
  
  final String data;
  final Function metodo; 

  const _TextCustom({
    @required this.data, 
    this.metodo
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.black,
        textStyle: TextStyle(
          fontSize: 20,
          decoration: TextDecoration.underline
        ),
      ),
      child: Text(this.data),
      onPressed: () {}, 
    );
  }
}