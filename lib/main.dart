import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Kasviinfosovellus';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Plants(),
    const Notes(),
    const Alarms()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kasviinfosovellus',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0 ? 
                const Icon(
                  Icons.wb_sunny_outlined,
                  color: Colors.white,
                  size: 35,
                ) 
                : const Icon(
                  Icons.sunny,
                  color: Colors.white,
                  size: 35,
                ), 
              ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1 ? 
                const Icon(
                  Icons.find_in_page_outlined,
                  color: Colors.white,
                  size: 35,
                ) 
                : const Icon(
                  Icons.find_in_page,
                  color: Colors.white,
                  size: 35,
                ), 
              ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2 ? 
                const Icon(
                  Icons.alarm_outlined,
                  color: Colors.white,
                  size: 35,
                ) 
                : const Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 35,
                ), 
              ),
          ],
        ),
      ),
    );
  }
}

class Plants extends StatelessWidget {
  const Plants({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
            children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('img/pothos.png'),
                    fit: BoxFit.fitHeight ,
                  )
              ),
              child: Text('Pothos',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    alignment: Alignment.centerRight,
                    image: AssetImage('img/snakeplant.png'),
                      fit: BoxFit.contain
                  )
                ),
                 child: Text('Snake plant', 
                 style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  ),
                 ),    
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('img/englishivy.png'), 
                    fit: BoxFit.contain
                    )
                  ), 
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Plant()),
                      );
                    },
                  child: const Text('English Ivy'),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Text(
          "Notes",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Alarms extends StatelessWidget {
  const Alarms({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Text(
          "Alarms",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Plant extends StatelessWidget {
  const Plant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plant'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}