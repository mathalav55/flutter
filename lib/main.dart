import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF21BFBD),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.restaurant_menu,
                    color: Colors.white,
                  ),
                ],
              ))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 50),
          Container(
              padding: EdgeInsets.only(left: 23),
              child: Row(
                children: [
                  Text(
                    "Healthy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Food",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 1.2),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0))),
              child: ListView(
                primary: false,
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          child: Container(
              height: MediaQuery.of(context).size.height / 7,
              color: Colors.white,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.height / 10,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey[400],
                              style: BorderStyle.solid,
                              width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.height / 10,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey[400],
                              style: BorderStyle.solid,
                              width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Text(
                          "Checkout",
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 17.5,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
