class Budget {
  String judul;
  int budget;
  String jenis;
  static final List<Budget> _listBudget = [];

  Budget({required this.judul, required this.budget, required this.jenis});

  static void addBudget(Budget item) {
    _listBudget.add(item);
  }

  static List<Budget> getList() {
    return _listBudget;
  }
}
