import 'package:flutter/material.dart';
import 'package:proje_baraj_/sayfalar/listormap.dart';
import 'package:provider/provider.dart';
import 'anypage/theme_provider.dart';
import 'googlemaps/lists.dart';
import 'googlemaps/ölürümtürkiyem.dart';
import 'googlesheets/sheetsapi.dart';
import 'googlesheets/sheetspage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SheetsApi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//     "/SheetPage": (context) => SheetsPage();
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
              title: 'Water_Wall',
              home: ListOrMap(),
              themeMode: themeProvider.themeMode,
              theme: Mythemes.lightTheme,
              darkTheme: Mythemes.darkTheme,
              initialRoute: "/",
              routes: {
                "/SheetsApi": (context) => SheetsPage(),
                "/Lists": (context) => kartliste(),
                "/GoogleMap": (context) => DenemeMap(),
              });
        },
      );
}


/*theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            shadowColor: Colors.blue.shade800,
            elevation: 8,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.grey.shade800,
            centerTitle: false,
            titleTextStyle: TextStyle(color: Colors.lightBlueAccent)),
      */
