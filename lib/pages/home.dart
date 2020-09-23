import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data ={};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    return Scaffold(
        body: SafeArea(

            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit : BoxFit.cover,
                ),

              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () async{
                          dynamic result = await Navigator.pushNamed(context, '/location');
                          setState(() {
                            data = {
                              'time' : result['time'],
                              'location' : result['location'],
                              'flag' : result['flag'],
                              'isDayTime' : result['isDayTime'],
                            };
                          });
                        },
                        icon: Icon(Icons.edit_location,
                          color: Colors.grey,
                        ),
                        label: Text('edit locaion',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(
                        data['location'],
                        style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2.0,
                          fontSize: 25.0
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text(data['time'],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ),
    );
  }
}
