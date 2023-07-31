import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/dua/dua.dart';
import 'package:latihan_flutter_dua/ui_screens/home/home.dart';

class Satu extends StatelessWidget {
  const Satu({super.key});

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
