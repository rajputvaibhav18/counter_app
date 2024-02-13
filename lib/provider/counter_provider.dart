import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _countValue = 0;

  int get countValue => _countValue;

  void add() {
    _countValue++;
    notifyListeners();
  }

  void sub() {
    _countValue--;
    notifyListeners();
  }
}
