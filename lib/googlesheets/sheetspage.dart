import 'package:flutter/material.dart';
import 'package:proje_baraj_/googlesheets/sheetsapi.dart';
import 'formwidget.dart';

class SheetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: BarajFormWidget(
              onSavedBaraj: (baraj) async {
                final Count = await SheetsApi.getRowCount() + 1;
                final newBaraj = baraj.copy(Count: Count);
                await SheetsApi.insert([newBaraj.toJson()]);
              },
            ),
          ),
        ),
      );
}
