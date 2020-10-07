import 'package:flutter/material.dart';
import './detailsPage.dart';

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
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.only(left: 40),
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
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 40, 20, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0))),
              child: ListView(
                primary: false,
                children: [
                  _buildFoodItem('assets/plate1.png', 'Salamon Bowl', '12.99'),
                  _buildFoodItem('assets/plate2.png', 'Avocado Bowl', '13.99'),
                  _buildFoodItem('assets/plate3.png', 'Berry Bowl', '32.99'),
                  _buildFoodItem('assets/plate4.png', 'Spring Bowl', '14.99'),
                  _buildFoodItem('assets/plate5.png', 'Fruit Bowl', '20.99'),
                ],
              ),
            ),
          )
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
          ),
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(
                  heroTag: imgPath, foodName: foodName, foodPrice: price)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$$price ",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
