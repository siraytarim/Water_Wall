import 'package:flutter/material.dart';
import 'package:proje_baraj_/sayfalar/listormap.dart';
import 'package:proje_baraj_/sayfalar/mainpage.dart';
import 'package:proje_baraj_/sayfalar/profilepage.dart';

class kartliste extends StatelessWidget {
  final String _Ege = "Ege";
  final String _Marmara = "Marmara";
  final String _Icanadolu = "İçanadolu";
  final String _Karadeniz = "Karadeniz";
  final String _Akdeniz = "Akdeniz";
  final String _GDoguanadolu = "Güney Doğuanadolu";
  final String _Doguanadolu = "Doğuanadolu";

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
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
      body: ListView(
        children: [
          ege(context),
          dog(context),
          mar(context),
          akdeniz(context),
          karadeniz(context),
          icandolu(context),
          guneydogu(context)
        ],
      ),
    );
  }
}

Widget ege(context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/SheetsApi");
        },
        child: Text(
          "EGE",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade600,
          ),
        ),
      ),
    );

Widget dog(context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/SheetsApi");
        },
        child: Text(
          "DOĞU ANADOLU",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade600,
          ),
        ),
      ),
    );
Widget mar(context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "MARMARA",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade600,
          ),
        ),
      ),
    );
Widget akdeniz(context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/SheetsApi");
        },
        child: Text(
          "AKDENİZ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade600,
          ),
        ),
      ),
    );
Widget karadeniz(context) => Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "KARADENİZ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade600,
          ),
        ),
      ),
    );
Widget icandolu(context) => Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/SheetsApi");
          },
          child: Text(
            "İÇ ANADOLU",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade600,
            ),
          ),
        ),
      ),
    );
Widget guneydogu(context) => Container(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "/SheetsApi");
        },
        child: Text(
          "GÜNEYDOĞU ANADOLU",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade600,
          ),
        ),
      ),
    ));
