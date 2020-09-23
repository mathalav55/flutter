import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new FlutterLogo(
          colors: Colors.green,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 5.0, color: Colors.grey[100])
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 15.0),
                            child: Stack(
                              children: [
                                Text(
                                  '206',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 35.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Container(
                                  child: Stack(
                                    children: <Widget>[
                                      RotationTransition(
                                        turns: new AlwaysStoppedAnimation(
                                            12 / 360),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 60.0, top: 27.0),
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Buy More',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Quicksand',
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'MY COACHES',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  padding: EdgeInsets.all(0.0),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'VIEW PAST SESSIONS',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  padding: EdgeInsets.all(0.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Tom', true, 1),
              _buildCard('Bella', false, 2),
              _buildCard('Riddle', false, 3),
              _buildCard('Rita', true, 4),
              _buildCard('Ron', true, 5),
              _buildCard('Reena', true, 6),
              _buildCard('Lewis', false, 7),
              _buildCard('Max', true, 8),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, bool status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 1.0,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey[400],
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2804282/pexels-photo-2804282.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'))),
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0),
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                    color: status ? Colors.green : Colors.amber,
                    border: Border.all(color: Colors.white, width: 2.5),
                    borderRadius: BorderRadius.circular(10.0)),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            name,
            style: TextStyle(
                fontFamily: 'QuickSand',
                fontSize: 14.0,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            status ? 'Available' : 'Away',
            style: TextStyle(
                fontFamily: 'QuickSand', fontSize: 14.0, color: Colors.grey),
          ),
          SizedBox(
            height: 5.0,
          ),
          Expanded(
            child: Container(
              width: 180.0,
              decoration: BoxDecoration(
                  color: status ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0))),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Request',
                  style: TextStyle(
                    fontFamily: 'QuickSand',
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(5.0, 0.0, 20.0, 10.0)
          : EdgeInsets.fromLTRB(20.0, 0.0, 5.0, 10.0),
    );
  }
}
