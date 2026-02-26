class CounterModel extends ChangeNotifier {
  int _angka = 0;
  int get angka => _angka;

  void Increment() {
    _angka++;
    notifyListeners(); 
  }
}