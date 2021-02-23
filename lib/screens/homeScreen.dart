import 'package:flutter/material.dart';
import 'package:flutterchartss/screens/bakimKarti.dart';




class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff353c55),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff353c55),
        title: Text(
          "Hey Rakib",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: BakimKarti(),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 16),
            child: Text(
              "What do you like to find!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Category",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ],
          ),
          // SizedBox(height: 1.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/cilek.png",
                    ),
                    Text("Data 1")
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.redAccent),
              ),
              Container(
                width: 120,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/elmas.png",
                    ),
                    Text("Data 2")
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 120,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/kirazes.png",
                    ),
                    Text("Data 1")
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: Text(
              "Popular",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(25),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset("assets/images/kirazes.png"),
                      SizedBox(width: 130,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              
                              //alignment: Alignment.topRight,
                              // color:Colors.black,
                              child: Text(
                                "Kiraz",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23),
                              ),),SizedBox(height: 8,),
                          Container(
                            
                             
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2),
                                  child: Center(child: Text("%20",style:TextStyle(color: Colors.pink,fontSize: 10))),
                                  height: 19,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.yellow),
                                ),
                                SizedBox(width: 25,),
                                Icon(Icons.star,color: Colors.yellow,),
                                Text("46"),
                              ],
                            ),
                          ),SizedBox(height: 8,),
                          Container(
                            height: 20,
                              alignment: Alignment.bottomRight,
                              child: Row(
                                children: [
                                  Icon(Icons.money,color:Colors.yellow),
                                  Text("14.60",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20,),
                                  Icon(Icons.data_usage_outlined,color: Colors.red,),
                                
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}