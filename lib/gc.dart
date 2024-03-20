import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gcState();
}

class _gcState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5,
                mainAxisExtent: 264),
            itemBuilder: (ctx, i) {
              return Card(
                child: Container(
                  height: 350,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            children: [
                              Image.asset(pic[i]),
                              Text(
                                fn[i],
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                sn[i],
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

List pic = [
  "asset/gc1.jpg",
  "asset/gc2.jpg",
  "asset/gc3.jpg",
  "asset/gc4.jpg",
  "asset/coffee.jpeg",
  "asset/gc5.jpg"
];
List fn = [
  "Knocking At",
  "Peace",
  "Desert Of Lost",
  "Suspicions",
  "Quite",
  "Love More Deeply"
];
List sn = [
  "7 MusicSong (s)",
  "6 MusicSong (s)",
  "10 MusicSong (s)",
  "1 MusicSong (s)",
  "11 MusicSong (s)",
  "13 MusicSong (s)",
];
