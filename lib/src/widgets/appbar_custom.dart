part of 'widgets.dart';


class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {

  AppBarCustom({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  _AppBarCustomState createState() => _AppBarCustomState();

  @override
  final Size preferredSize; // default is 56.0
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.8,
      toolbarHeight: 65,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Row(
          children: [
            Container(
              width: 100,
              height: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/icon.png'),
              )),
            ),
            SizedBox(width: 170),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {}
            ),
          ],
        )
      ],
    );
  }

}