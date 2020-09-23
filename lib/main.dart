import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
    theme: ThemeData( fontFamily: '' ,),
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  List<Quote> quotes = [
    Quote(text : 'hello world' , author : 'vamsi'),
    Quote(text : 'hello world again' , author : 'vamsi'),
    Quote(text : 'hello god' , author : 'vamsi'),

  ];
  Widget build(BuildContext context) {
    Widget quoteCard(quote){
      return Card(
        margin: EdgeInsets.all(10.0),
        elevation: 10.0,
        child : Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style : TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 20.0
                )
              ),
              SizedBox(height : 5.0),
              Text(
                quote.author,
                style: TextStyle(
                  color : Colors.black,
                  fontSize: 15.0,
                ),
              )
            ],
          ),
        )
      );
    }
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: quotes.map((quote) => quoteCard(quote)).toList(),
        ),
      ),
    );
  }
}
