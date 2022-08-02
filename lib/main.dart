import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu_rounded, size: 40)),
            title: const Text("Voyage en Islande"),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border, size: 30))
            ],
            backgroundColor: Colors.green.shade400,
          ),
          body: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageSection,
              TitleSection,
              TextSection,
              IconSection,
              HotelSection,
              buttonSection,
              SizedBox(
                height: 20,
              )
              // const SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const [Text('bonjour'), Text('aurevoir')],
              // )
            ],
          ))),
    );
  }
}

Widget ImageSection = Image.asset('assets/images/islande.webp');
Widget TitleSection = Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text('Bienvenue au Paradis',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
            Text('Résérvez votre séjour en Islande',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
          ],
        ),
      ],
    ));
Widget TextSection = Container(
  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
  child: const Text(
    '''L'Islande est un pays insulaire nordique aux paysages spectaculaires composés de volcans, geysers, sources chaudes et champs de lave. Les parcs nationaux de Vatnajökull et Snæfellsjökull comportent d'immenses glaciers protégés. La plupart des Islandais vivent dans la capitale, Reykjavik, qui est alimentée à l'énergie géothermique. Elle accueille le musée national et le musée des sagas, qui retracent l'histoire viking du pays
''',
    softWrap: true,
  ),
);

Widget IconSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.local_hotel,
                  color: Colors.green,
                  size: 40,
                )),
            SizedBox(height: 10),
            Text('HOTELS',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w800))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.flight_takeoff,
                  color: Colors.green,
                  size: 40,
                )),
            SizedBox(height: 10),
            Text('VOLS',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w800))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.drive_eta,
                  color: Colors.green,
                  size: 40,
                )),
            SizedBox(height: 10),
            Text('VOITURE',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w800))
          ],
        ),
      ),
    ],
  ),
);

Widget HotelSection = Container(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQx7Ic26xS78jVDwm-cqly0EyttrWfAZQsjyk9HdPC8g&s',
              fit: BoxFit.contain),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQx7Ic26xS78jVDwm-cqly0EyttrWfAZQsjyk9HdPC8g&s',
              fit: BoxFit.contain),
        ),
      ],
    ));

Widget buttonSection = ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.green.shade600,
      textStyle: const TextStyle(fontSize: 20),
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    ),
    onPressed: () {},
    child: Text('Voir d\'autre logement'));
