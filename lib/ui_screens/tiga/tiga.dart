import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/dua/dua.dart';
import 'package:latihan_flutter_dua/ui_screens/home/home.dart';

class Tiga extends StatelessWidget {
  const Tiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Tiga'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
