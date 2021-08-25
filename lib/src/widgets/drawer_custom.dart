part of 'widgets.dart';

class DrawerCustom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(  
      child: Container(  
          child: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: ( context, i) => Divider(  
            color: Color.fromRGBO(140, 122, 91, 1),
          ), 
          itemCount: 6,
          itemBuilder: (context, i) => _OptionsCustom(
            titulo: optionsMenu[i].titulo, 
            ruta: optionsMenu[i].page,
          ), 
        )
      ),
    );
  }
}

class _OptionsCustom extends StatelessWidget {

  final String titulo;
  final String ruta;

  const _OptionsCustom({
    @required this.titulo, 
    @required this.ruta
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(this.titulo),
      trailing: Icon(Icons.chevron_right, color: Color.fromRGBO(140, 122, 91, 1)),
      onTap: () => Navigator.pushNamed(context, this.ruta)
    );
  }
}