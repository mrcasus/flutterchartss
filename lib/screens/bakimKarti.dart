import 'package:flutter/material.dart';


class BakimKarti extends StatefulWidget {
  @override
  _BakimKartiState createState() => _BakimKartiState();
}

class _BakimKartiState extends State<BakimKarti> {
  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            TextField(controller: t1,),
            TextField(controller: t2,),
            Row(
              children: [
                RaisedButton(onPressed: null),
                RaisedButton(onPressed: null),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
