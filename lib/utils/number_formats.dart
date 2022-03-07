import 'package:intl/intl.dart';

class NumberFormats {
  static String toFormattedPrice(double price) {
    final formattedNumber = NumberFormat.currency(name: 'COP \$').format(price);
    return formattedNumber;
  }
}
