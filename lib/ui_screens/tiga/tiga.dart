import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:latihan_flutter_dua/ui_screens/dua/dua.dart';
// import 'package:latihan_flutter_dua/ui_screens/home/home.dart';

class Tiga extends StatefulWidget {
  const Tiga({super.key});

  @override
  State<Tiga> createState() => _TigaState();
}

var v = Random().nextInt(100);

class _TigaState extends State<Tiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text(
                "Clik",
              ),
            ),
          ],
          automaticallyImplyLeading: false,
          title: Text(Random().nextInt(100).toString()),
        ),
        body: const Center(
          child: MyColumn(),
        ));
  }
}

class MyColumn extends StatefulWidget {
  const MyColumn({
    super.key,
  });

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Random().nextInt(100).toString(),
          textScaleFactor: 3,
        ),
        const SizedBox(height: 20),
        Text(
          x.toString(),
          textScaleFactor: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = x + 10;
                  debugPrint('yahut');
                });
              },
              child: const Text(
                "Tambah",
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = x - 10;
                  debugPrint('yakin');
                });
              },
              child: const Text(
                "Kurang",
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            debugPrint('yayayay');
            // final route = MaterialPageRoute(
            //   builder: (context) {
            //     return Home();
            //   },
            // );
            Navigator.pop(context);
          },
          child: const Text(
            "Back",
          ),
        ),
      ],
    );
  }
}
