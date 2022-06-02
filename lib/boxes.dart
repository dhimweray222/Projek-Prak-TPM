import 'package:hive/hive.dart';
import 'package:recipe_app/models/fav.dart';

class Boxes {
  static Box<Fav> getTransactions() =>
      Hive.box<Fav>('fav');
}