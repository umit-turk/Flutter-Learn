class ApplicationStrings {
  static ApplicationStrings? _instance;
  static ApplicationStrings get instance {
    if (_instance != null) return _instance!;
    _instance = ApplicationStrings._init();
    return _instance!;
  }

  ApplicationStrings._init();

  final String cardTitle = 'Cart';
  final String checkOut = 'checkOut';

  final String subTotal = 'subTotal';
  final String delivery = 'delivery';
  final String total = 'total';
}
