import 'package:flutter/cupertino.dart';

class PageNotifier extends ChangeNotifier {
  double page = 0.0;


  listener(double value) {
    page = value;

    notifyListeners();
  }
}
