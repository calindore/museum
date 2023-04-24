import 'package:flutter/material.dart';

void main() {
  runApp(const MuseumApp());
}

class MuseumApp extends StatelessWidget {
  const MuseumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Museum',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ArtWork(),
    );
  }
}

class ArtWork extends StatefulWidget {
  const ArtWork({super.key});
  static const bool _isFavorite = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Museum'),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Mona_Lisa.jpg'),
                ),
                const Opacity(
                  opacity: 0.75,
                  child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Mona Lisa',
              style: TextStyle(fontSize: 30, color: Colors.brown),
            ),
            const Text(
              'Leonardo Da vinci',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.article),
                Icon(Icons.favorite),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
