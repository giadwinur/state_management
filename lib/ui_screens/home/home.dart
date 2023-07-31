import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/satu/satu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('giaa');
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
