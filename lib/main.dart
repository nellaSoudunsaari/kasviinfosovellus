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
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
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
    const Plants()
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
      body: pages[0],
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
              // kultaköynnös 
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
              child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pothos()),
                      );
                    },
                  child: Text('Kultaköynnös', style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                  )),
                ),
            ),
            // Anopinkieli
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
                 child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SnakePlant()),
                      );
                    },
                  child: Text('Anopinkieli', style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                  ),),
                ),   
            ),
            // Varjomuraatti
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
                    textStyle: const TextStyle(fontSize: 20,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EnglishIvy()),
                      );
                    },
                  child: Text('Varjomuraatti', style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                  ),),
                ),
              ),
              // Rönsylilja
              Container(
              alignment: Alignment.centerLeft,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('img/spiderplant.png',), 
                    fit: BoxFit.contain,
                    )
                  ), 
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SpiderPlant()),
                      );
                    },
                  child: Text('Rönsylilja', style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                  ),),
                ),
              ),
              Container(
              alignment: Alignment.centerLeft,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('img/peacelily.png'), 
                    fit: BoxFit.contain
                    )
                  ), 
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PeaceLily()),
                      );
                    },
                  child: Text('Viirivehka', style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                  ),),
                ),
              ),
              Container(
              alignment: Alignment.centerLeft,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage('img/aloevera.png'), 
                    fit: BoxFit.contain
                    )
                  ), 
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20,),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AloeVera()),
                      );
                    },
                  child: Text('Aloe vera', style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
                  ),),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

// kultaköynnös
class Pothos extends StatelessWidget {
  const Pothos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kultaköynnös'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(5, 50, 5, 5),
            child: const 
            Text("Kultaköynnös", 
              textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: 
            Image(
              image: 
                AssetImage('img/pothos.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text
              ('Kultaköynnös on liaanimainen köynnöskasvi, joka pitää puolivarjoisesta ja kosteasta. Kasvi on lievästi myrkyllinen.'),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child:Image.asset('img/slider_sun_2.png', width: 150,),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('img/slider_rain_2.png', width: 150,)
                ),
              ],  
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('img/pothos1.png', width: 300,)
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('Kasvi pitää sumuttelusta ja säännöllisestä kastelusta. Pintamullan voi antaa kuivahtaa kasteluiden välissä.')
          )
        ],
      )
    );
  }
}

// anopinkieli
class SnakePlant extends StatelessWidget {
  const SnakePlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anopinkieli'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(5, 50, 5, 5),
            child: const 
            Text("Anopinkieli", 
              textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: 
            Image(
              image: 
                AssetImage('img/snakeplant.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text
              ('Anopinkieli on hyvin helppohoitoinen kasvi, joka viihtyy kaikenlaisissa olosuhteissa. Parhaiten se kuitenkin voi kirkkaassa valossa.'),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child:Image.asset('img/slider_sun_3.png', width: 150,),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('img/slider_rain_1.png', width: 150,)
                ),
              ],  
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('img/snakeplant1.png', width: 300,)
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('Kasvia kastellaan niukasti, mutta siten että multa on kastunut kunnolla ja varoen lehtiä. Mullan saa antaa kuivahtaa kokonaan kasteluiden välissä.')
          )
        ],
      )
    );
  }
}

// varjomuraatti
class EnglishIvy extends StatelessWidget {
  const EnglishIvy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Varjomuraatti'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(2, 50, 5, 5),
            child: const 
            Text("Varjomuraatti", 
              textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: 
            Image(
              image: 
                AssetImage('img/englishivy.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text
              ('Varjomuraatti on köynnösmäinen kasvi, joka on helpohko hoitaa. Kasvi suosii puolivarjoisaa valoa ja kosteaa multaa.'),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child:Image.asset('img/slider_sun_2.png', width: 150,),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('img/slider_rain_2.png', width: 150,)
                ),
              ],  
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('img/englishivy1.png', )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('Mullan ei tarvitse kuivua kasteluiden välissä, riittää kun pintamulta on kuiva. Kasvi pitää myös sumutuksesta.')
          )
        ],
      )
    );
  }
}

class SpiderPlant extends StatelessWidget {
  const SpiderPlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rönsylilja'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(2, 50, 5, 5),
            child: const 
            Text("Rönsylilja", 
              textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: 
            Image(
              image: 
                AssetImage('img/spiderplant.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text
              ('Rönsylilja on pensasmainen kasvi, joka nauttii kosteudesta ja suojaisesta paikasta.'),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child:Image.asset('img/slider_sun_2.png', width: 150,),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('img/slider_rain_3.png', width: 150,)
                ),
              ],  
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('img/spiderplant1.png', width: 300,)
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('Kasvi pitää tasaisesta kosteudesta, jota edesauttaa hyvin ilmava multa. ')
          )
        ],
      )
    );
  }
}

class PeaceLily extends StatelessWidget {
  const PeaceLily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Viirivehka'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(2, 50, 5, 5),
            child: const 
            Text("Viirivehka", 
              textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: 
            Image(
              image: 
                AssetImage('img/peacelily.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text
              ('Viirivehka on kaunis huonekasvi, joka pitää puolivarjoisesta paikasta ja kosteasta ympäristöstä.'),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child:Image.asset('img/slider_sun_2.png', width: 150,),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('img/slider_rain_2.png', width: 150,)
                ),
              ],  
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('img/peacelily1.png', width: 300,)
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('Vaikka kasvi pitää kosteudesta, se kestää enemmän alikastelua kuin ylikastelua. Kasvi tuottaa enemmän kukkia, jos se laitetaan aurinkoiseen ympäristöön.')
          )
        ],
      )
    );
  }
}

class AloeVera extends StatelessWidget {
  const AloeVera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aloe Vera'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(2, 50, 5, 5),
            child: const 
            Text("Aloe vera", 
              textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: 
            Image(
              image: 
                AssetImage('img/aloevera.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: const Text
              ('Aloe vera on tuttu lääkekasvi, joka pitää valosta eikä tarvitse paljoa kastelua.'),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child:Image.asset('img/slider_sun_2.png', width: 150,),
                ),
                Positioned(
                  top: 60,
                  child: Image.asset('img/slider_rain_1.png', width: 150,)
                ),
              ],  
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('img/aloevera1.png', width: 300,)
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text('Kasvia kastellaan korkeintaan kahdesti kuukaudessa, jottei juuret mätäne. Valoisa ympäristön suositeltavaa kasville.')
          )
        ],
      )
    );
  }
}