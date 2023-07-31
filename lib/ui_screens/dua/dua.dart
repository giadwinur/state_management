import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/satu/satu.dart';
import 'package:latihan_flutter_dua/ui_screens/tiga/tiga.dart';

class Dua extends StatefulWidget {
  const Dua({super.key});

  @override
  State<Dua> createState() => _DuaState();
}

var x = 0;

class _DuaState extends State<Dua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Dua'),
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
                  print('dwdwi');
                  final route = MaterialPageRoute(
                    builder: (context) {
                      return const Satu();
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
                  print('dwdwi');
                  final route = MaterialPageRoute(
                    builder: (context) {
                      return const Tiga();
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
