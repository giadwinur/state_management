import 'package:flutter/material.dart';
import 'package:latihan_flutter_dua/ui_screens/home/data.dart';

void tambah() {
  counter.state = counter.state + 1;
  debugPrint(counter.state.toString());
}

void kurang() {
  counter.state = counter.state - 1;
  debugPrint(counter.state.toString());
}
