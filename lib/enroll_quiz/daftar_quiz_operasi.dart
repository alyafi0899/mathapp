import 'package:flutter/material.dart';
//ketik stless untuk membuat Stateless Widget atau stlful unutk membuat StateFull Widget

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "MENU QUIZ OPERASI",
          ),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(24),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: AssetImage("assets/plus 1.png")),
                      //Icon(Icons.home, size: 70, color: Colors.blueAccent),
                      Text("Penjumlahan", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: AssetImage("assets/minus 1.png")),
                      //Icon(Icons.home, size: 70, color: Colors.blueAccent),
                      Text("Pengurangan", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/enroll');
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: AssetImage("assets/multiplication 1.png")),
                      //Icon(Icons.home, size: 70, color: Colors.blueAccent),
                      Text("Perkalian", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {
                  //Navigator.popAndPushNamed(context, '/detail_quiz');
                },
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: AssetImage("assets/division 1.png")),
                      //Icon(Icons.home, size: 70, color: Colors.blueAccent),
                      Text("Pembagian", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(2),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Image(image: AssetImage("assets/Mix_Operation.png")),
                      //Icon(Icons.home, size: 70, color: Colors.blueAccent),
                      Text("Mix Operation", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
