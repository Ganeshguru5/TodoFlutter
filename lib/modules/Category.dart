import 'package:todolistapp/common.widgets/category_icon.dart';

class Category {
  String id;
  String name;
  bool isChecked;
  final CategoryIcon icon;
  Category({
    required this.icon,
    required this.id,
    required this.name,
    this.isChecked = true,
  });
}

//var category = Category('1', 'All', true);
// var category = Category(id: '1', name: 'Ganesh');