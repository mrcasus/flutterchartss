import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutterchartss/screens/homeScreen.dart';

import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreenView(
          home: MyHomePage(),
          duration: 5000,
          imageSize: 500,
          imageSrc: "assets/caps-product-pmsa.png",
          backgroundColor: Colors.white,
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var data = [
      Sales("Bakım Yapılan", 50),
      Sales("Bakım Yapılmıyan", 30),
    ];

    var series = [
      charts.Series(
          domainFn: (Sales sales, _) => sales.day,
          measureFn: (Sales sales, _) => sales.sold,
          id: 'Sales',
          data: data,
          labelAccessorFn: (Sales sales, _) =>
              '${sales.day}: ${sales.sold.toString()}')
    ];

    var chart = charts.PieChart(
      series,
      defaultRenderer: charts.ArcRendererConfig(
          arcRendererDecorators: [charts.ArcLabelDecorator()]),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'deneme',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 25.0, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          // iconSize: 17.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.doorOpen),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 300, child: chart),
          ],
                  ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          // selectedItemBorderColor: Colors.black,
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: Colors.black,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          barHeight: 70,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.clipboardList,
            label: 'Demirbaş Listesi',
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.tools,
            label: 'Bakım Kartı',
            selectedBackgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class Sales {
  final String day;
  final int sold;

  Sales(this.day, this.sold);
}
