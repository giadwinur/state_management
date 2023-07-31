import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/home/ctrl.dart';
import 'package:latihan_flutter_dua/ui_screens/home/data.dart';
import 'package:latihan_flutter_dua/ui_screens/satu/satu.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            Random().nextInt(100).toString(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Random().nextInt(100).toString(),
                textScaleFactor: 3,
              ),
              OnReactive(
                () => Text(
                  counter.state.toString(),
                  textScaleFactor: 3,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => tambah(),
                    child: const Text(
                      "Tambah",
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => kurang(),
                    child: const Text(
                      "Kurang",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  debugPrint('giaa');
                  final route = MaterialPageRoute(
                    builder: (context) {
                      return const Satu();
                    },
                  );

                  Navigator.push(context, route);
                },
                child: const Text(
                  "Clik Me",
                ),
              ),
            ],
          ),
        ));
  }
}
