import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje_baraj_/materyal/yaz%C4%B1lar.dart';
import 'package:proje_baraj_/sayfalar/profilepage.dart';
import 'listormap.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

String? myNullableString;

class _MainPageState extends State<MainPage> {
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
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
          news1(),
          news2(),
          news3(),
          news4(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent.shade400,
        elevation: 4.0,
        icon: Icon(
          Icons.add,
          color: Colors.pink.shade700,
        ),
        label: Text(
          'Haber Ekle',
          style: TextStyle(color: Colors.pink.shade700),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HaberEkle(),
              ));
        },
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
              icon: Icon(Icons.new_label),
              onPressed: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
             */
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

Widget news1() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://foto.haberler.com/haber/2021/02/05/izmir-baraj-doluluk-oranlari-ne-kadar-5-subat-13909026_588_amp.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(
            children: [
              Text(
                "İstanbul'da barajların doluluk oranı yüzde 88,63'e ulaştı... Özleyen: "
                'Eylül sonuna kadar su tehlikesi yok ama tasarruf şart'
                ".",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget news2() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i4.hurimg.com/i/hurriyet/75/866x494/6236e38c4e3fe0128863235e.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(
            children: [
              Text(
                "Su yükseldi, Alibeyköy Barajı çöple doldu.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            //color: Colors.black87,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget news3() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                image: NetworkImage(
                    "https://maabir.com/wp-content/uploads/2020/10/baraj-kapak.jpg"),
              ),
            ),
          ),
          Stack(
            children: [
              Text(
                "DSİ 10. Bölge Müdür Yardımcısı Fazıl Aslan da en büyük gayretlerinin daha çok su depolama tesisi yapmak olduğunu söyledi.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
            //color: Colors.black87,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget news4() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1722000/4-bin-yillik-hoyuk-adiyaman-trt-haber-1722373_2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(
            children: [
              Text(
                "4 Eylül barajının su seviyesi yükseliyor..",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
