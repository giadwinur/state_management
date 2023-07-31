import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/dua/dua.dart';
import 'package:latihan_flutter_dua/ui_screens/home/home.dart';

class Satu extends StatefulWidget {
  const Satu({super.key});

  @override
  State<Satu> createState() => _SatuState();
}

var x = 0;

class _SatuState extends State<Satu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Satu'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  print('hahah');
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
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('hihihi');
                  final route = MaterialPageRoute(
                    builder: (context) {
                      return const Dua();
                    },
                  );

                  Navigator.push(context, route);
                },
                child: const Text(
                  "Next",
                ),
              ),
            ],
          ),
        ));
  }
}
