import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/dua/dua.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';

import '../home/data.dart';
// import 'package:latihan_flutter_dua/ui_screens/home/home.dart';

class Satu extends StatelessWidget {
  const Satu({super.key});

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
              Text(
                Random().nextInt(100).toString(),
                textScaleFactor: 3,
              ),
              OnReactive(
                () => Text(
                  counter.state.toString(),
                  textScaleFactor: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      counter.state = counter.state + 10;
                    },
                    child: const Text(
                      "Tambah",
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      counter.state = counter.state + 10;
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
                  debugPrint('hahah');
                  // final route = MaterialPageRoute(
                  //   builder: (context) {
                  //     return  Home();
                  //   },
                  // );

                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  debugPrint('hihihi');
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
