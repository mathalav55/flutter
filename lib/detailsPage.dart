import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName, this.foodPrice});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Details',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Hero(
            tag: widget.heroTag,
            child: Image(
              image: AssetImage(widget.heroTag),
              height: 300,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}
