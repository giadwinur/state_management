import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/dua/dua.dart';
import 'package:latihan_flutter_dua/ui_screens/home/home.dart';

class Tiga extends StatefulWidget {
  const Tiga({super.key});

  @override
  State<Tiga> createState() => _TigaState();
}

var x = 0;

class _TigaState extends State<Tiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(Random().nextInt(100).toString()),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Random().nextInt(100).toString()),
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
                        print('yahut');
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
                        print('yakin');
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
                  print('yayayay');
                  final route = MaterialPageRoute(
                    builder: (context) {
                      return const Home();
                    },
                  );
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                ),
              ),
            ],
          ),
        ));
  }
}
