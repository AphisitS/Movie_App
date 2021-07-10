import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.cyan,
      ),
      home: MoviePage(),
    );
  }
}

class MoviePage extends StatefulWidget {
  MoviePage({Key key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: setAppbar,
      body: Container(
        decoration: new BoxDecoration(
          // color: Colors.purple,
          gradient: new LinearGradient(
              colors: [Colors.cyan[50], Colors.cyan[300]],
              begin: Alignment.bottomCenter,
              end: new Alignment(-1.0, -1.0)),
        ),
        child: ListView(
          children: <Widget>[
            profileSection,
            movieSection(context),
            buttonSection,
            newReleaseSection,
          ],
        ),
      ),
      bottomNavigationBar: setBottom,
      floatingActionButton: FloatingActionButton(
          child: CircleAvatar(
              backgroundColor: Colors.greenAccent, child: Icon(Icons.add)),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget profileSection = Container(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello Cenk',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Let explore your favorite movies')
            ],
          ),
        ),
        CircleAvatar(child: Icon(Icons.person)),
      ],
    ),
  );

  Widget movieSection(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              child: Text('Popular Movie',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i1.wp.com/mereview.in.th/wp-content/uploads/2017/12/88-Jumanji.jpg?fit=800%2C600&ssl=1'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Jumanji : The Next Level',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[50])),
                    Text('Action,Adventure,comedy',
                        style: TextStyle(fontSize: 16, color: Colors.white))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buttonSection = Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Trending Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('View all',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.yellow[500],
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: new BorderRadius.all(Radius.circular(10)),
                    color: Colors.yellow[500],
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.yellow[700],
                          offset: new Offset(0.0, 3.0),
                          blurRadius: 5.0,
                          spreadRadius: 3.0)
                      //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: FlatButton(
                    child: Text(
                      'Fatasy',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.greenAccent,
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: new BorderRadius.all(Radius.circular(10)),
                    color: Colors.greenAccent,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.green[300],
                          offset: new Offset(0.0, 3.0),
                          blurRadius: 5.0,
                          spreadRadius: 3.0)
                      //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: FlatButton(
                    child: Text(
                      'Action',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.orange,
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: new BorderRadius.all(Radius.circular(10)),
                    color: Colors.orange,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.orange[300],
                          offset: new Offset(0.0, 3.0),
                          blurRadius: 5.0,
                          spreadRadius: 3.0)
                      //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: FlatButton(
                    child: Text(
                      'Adventure',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    border: new Border.all(
                        color: Colors.red,
                        width: 5.0,
                        style: BorderStyle.solid),
                    borderRadius: new BorderRadius.all(Radius.circular(10)),
                    color: Colors.red,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.red[300],
                          offset: new Offset(0.0, 3.0),
                          blurRadius: 5.0,
                          spreadRadius: 3.0)
                      //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: FlatButton(
                    child: Text(
                      'Sci-Fi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget newReleaseSection = Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('New Release',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('View all',
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/th/0/0d/Avengers_Endgame_poster.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 200,
              width: 150,
            ),
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://s.isanook.com/mv/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL212LzAvdWQvMTkvOTU4ODEvcG9zdGVya2luZ2RvbTJfdGguanBn.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 200,
              width: 150,
            ),
          ],
        ),
      ),
    ],
  );

  Widget setBottom = BottomAppBar(
    elevation: 30,
    color: Colors.cyan[100],
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: Icon(Icons.book), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),
    ),
  );

  Widget setAppbar = AppBar(
    backgroundColor: Colors.cyan[500],
    elevation: 30,
    leading: Icon(Icons.menu),
    title: Text('Movie App'),
    actions: [
      Icon(Icons.favorite),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Icon(Icons.search),
      ),
      Icon(Icons.more_vert),
    ],
  );
}
