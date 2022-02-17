//Laura Mills Nelson
//CSCI 238 01, FA 2020
//Routes and Stateful/Stateless Pages Assignment
//10-15-2020


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/HomePage": (BuildContext context) => HomePage(),
        "/SecondPage": (BuildContext context) => SecondPage(),
        "/ThirdPage": (BuildContext context) => ThirdPage(),
        "/FourthPage": (BuildContext context) => FourthPage(),
        "/FifthPage": (BuildContext context) => FifthPage(),
        "/CollagePage": (BuildContext context) => CollagePage(),
      }));
}

//Home Page
class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Homepage --- Routes by Laura"),
            backgroundColor: Colors.black54),
        body: Container(
            padding: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  mountains,
                  //Image.asset("images/mountain.jpg"),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 10.0)),
                  Text(
                    "Life in the Rocky Mountains is beautiful. The four "
                    "seasons are a stunning display of nature's majesty. "
                    "Click on the icons below to access pictures of each.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Arial'),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 20.0, right: 0.0, bottom: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/SecondPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.local_florist, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ThirdPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_sunny, color: Colors.yellowAccent),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FourthPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.spa, color: Colors.deepOrange),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FifthPage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Winter        Spring        Summer       Fall    ",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.photo_library,
                              color: Colors.deepPurple),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CollagePage");
                          }
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black54),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/HomePage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Collage      Home",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ])));
  }

  Widget mountains = Padding(
      padding: EdgeInsets.only(
          left: 0.0, top: 10.0, right: 0.0, bottom: 20.0),
      child: Image.asset("images/mountain.jpg"));

} //end of class _HomePageState extends State<HomePage>

//Second Page (Winter)
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Winter"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            padding: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  winter,
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 10.0)),
                  Text(
                      "Winter may be cold, but it is also magical. Many people like "
                      "to ski, whether cross country or downhill. The brilliant "
                      "winter sun can be found high up above a valley's cloud "
                      "inversion.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 30.0, right: 0.0, bottom: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/SecondPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.local_florist, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ThirdPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_sunny, color: Colors.yellowAccent),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FourthPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.spa, color: Colors.deepOrange),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FifthPage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Winter        Spring        Summer       Fall    ",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.photo_library,
                              color: Colors.deepPurple),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CollagePage");
                          }
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black54),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/HomePage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Collage      Home",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ])));
  }

  Widget winter = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 20.0),
      child: Image.asset("images/winter_ski.jpg"));

} //end of class SecondPage


//Third Page (Spring)
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Spring"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            padding: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  spring,
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 10.0)),
                  Text(
                      "The purple crocus is one of the first flowers to peek "
                      "through in spring, showing its flash of rich color, "
                      "even as snow remains on the surrounding mountains.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 30.0, right: 0.0, bottom: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/SecondPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.local_florist, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ThirdPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_sunny, color: Colors.yellowAccent),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FourthPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.spa, color: Colors.deepOrange),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FifthPage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Winter        Spring        Summer       Fall    ",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.photo_library,
                              color: Colors.deepPurple),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CollagePage");
                          }
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black54),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/HomePage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Collage      Home",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ])));
  }

  Widget spring = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 20.0),
      child: Image.asset("images/crocus.jpg"));

} //end of class ThirdPage


//Fourth Page (Summer)
class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black
            ),
            title: Text(
              "Summer",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.yellowAccent),
        body: Container(
            padding: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  summer,
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 10.0)),
                  Text(
                      "Hiking is the perfect activity for summer in the Rocky "
                      "Mountains. Spectacular scenery abounds in the many "
                      "National Forests, National Parks, and Wilderness "
                      "areas.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 30.0, right: 0.0, bottom: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/SecondPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.local_florist, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ThirdPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_sunny, color: Colors.yellowAccent),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FourthPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.spa, color: Colors.deepOrange),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FifthPage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Winter        Spring        Summer       Fall    ",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.photo_library,
                              color: Colors.deepPurple),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CollagePage");
                          }
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black54),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/HomePage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Collage      Home",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ])));
  }

  Widget summer = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 20.0),
      child: Image.asset("images/summer.jpg"));

} //end of class FourthPage


//Fifth Page (Fall)
class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fall"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
            padding: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  fall,
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 10.0)),
                  Text(
                      "Western Larches (also known as Tamaracks) are one of the "
                      "iconic symbols of fall in the northwest Rockies. "
                      "The trees bear soft needles that turn a vivid orange "
                      "in the fall.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Arial')),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 30.0, right: 0.0, bottom: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/SecondPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.local_florist, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ThirdPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_sunny, color: Colors.yellowAccent),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FourthPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.spa, color: Colors.deepOrange),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FifthPage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Winter        Spring        Summer       Fall    ",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.photo_library,
                              color: Colors.deepPurple),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CollagePage");
                          }
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black54),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/HomePage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Collage      Home",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ])));
  }

  Widget fall = Padding(
      padding: EdgeInsets.only(left: 0.0, top: 10.0, right: 0.0, bottom: 20.0),
      child: Image.asset("images/fall.jpg"));

} //end of class FifthPage


//Collage Page (with Likes)
class CollagePage extends StatefulWidget {
  _CollagePageState createState() => _CollagePageState();
}

class _CollagePageState extends State<CollagePage> {

  int _counter = 0;

  void _likeCounter() {

    setState(() {

      _counter++;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Collage"),
            backgroundColor: Colors.deepPurple),
        body: Container(
            padding: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 0.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                      "    Like this app!         ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold),
                      ),
                      RaisedButton(
                        color: Colors.deepPurple,
                        focusColor: Colors.purple,
                        onPressed: _likeCounter,
                        child: Icon(Icons.thumb_up, color: Colors.white),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20.0),
                        elevation: 10,
                        )
                      ]
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 20.0, right: 0.0, bottom: 10.0)),
                  collage,
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 0.0, right: 0.0, bottom: 10.0)),
                  Text(
                    "# of Likes:   "  + '$_counter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 20.0, right: 0.0, bottom: 10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.ac_unit, color: Colors.blue),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/SecondPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.local_florist, color: Colors.green),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/ThirdPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_sunny, color: Colors.yellowAccent),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FourthPage");
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.spa, color: Colors.deepOrange),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/FifthPage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Winter        Spring        Summer       Fall    ",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.photo_library,
                              color: Colors.deepPurple),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/CollagePage");
                          }
                      ),
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.black54),
                        iconSize: 70.0,
                        onPressed: () {
                          Navigator.of(context).pushNamed("/HomePage");
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Collage      Home",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ])));
  }

  Widget collage = Padding(
      padding: EdgeInsets.only(
          left: 0.0, top: 10.0, right: 0.0, bottom: 20.0),
      child: Image.asset("images/collage.jpg"));

} //end of class _CollagePageState extends State<CollagePage>