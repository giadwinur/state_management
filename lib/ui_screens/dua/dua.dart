import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/satu/satu.dart';
import 'package:latihan_flutter_dua/ui_screens/tiga/tiga.dart';

class Dua extends StatelessWidget {
  const Dua({super.key});

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
