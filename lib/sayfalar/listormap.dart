import 'package:flutter/material.dart';
import 'package:proje_baraj_/sayfalar/profilepage.dart' hide Page;
import 'MainPage.dart';

class ListOrMap extends StatefulWidget {
  const ListOrMap({Key? key}) : super(key: key);

  @override
  State<ListOrMap> createState() => _LOMState();
}

class _LOMState extends State<ListOrMap> {
  int _selectedIndex = 0;
  final String _Baraj = "Google Maps";
  final String _List = "Google Sheets";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        centerTitle: true,
        title: Text(
          'Water Wall',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade800,
          ),
        ),
      ),
      body: ListView(
        children: [
          BarajCard(context),
          ListCard(context),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent.shade700,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListOrMap()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.add_business_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget BarajCard(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://www.trustedreviews.com/wp-content/uploads/sites/54/2020/02/Google-Maps-Icon-920x517.jpg'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/GoogleMap");
              },
            ),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Google Maps',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
Widget ListCard(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlPrlNkUVScR62up8SKLyeFs80xfBktL28BknRJ5T0keT2fLZXTgO7SMGZ2MDOMhyMFNs&usqp=CAU'),
            height: 240,
            fit: BoxFit.cover,
            child: InkWell(onTap: () {
              Navigator.pushNamed(context, "/Lists");
            }),
          ),
          Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Google Sheets',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
/*
Widget ListCard(context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.blue.shade600,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlPrlNkUVScR62up8SKLyeFs80xfBktL28BknRJ5T0keT2fLZXTgO7SMGZ2MDOMhyMFNs&usqp=CAU'),
            height: 240,
            fit: BoxFit.cover,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SheetsPage()),
                        );
                      },
                      child: const Text(
                        '    ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 300,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ); */
