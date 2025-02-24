import 'package:flutter/material.dart';
import 'package:todolistapp/common.widgets/category_icon.dart';
import 'package:todolistapp/modules/Category.dart';

class CategoryCollection {
final List<Category> categories = [
    Category(
      id: 'today',
      name: 'Todays',
      icon: CategoryIcon(
        iconData: Icons.today,
      ),
    ),
    Category(
      id: 'scheduled',
      name: 'Scheduled',
      icon: CategoryIcon(
        iconData: Icons.schedule,
      ),
    ),
    Category(
      id: 'all',
      name: 'All',
      icon: CategoryIcon(
        iconData: Icons.all_inclusive_sharp,
      ),
    ),
    Category(
      id: 'flagged',
      name: 'Flagged',
      icon: CategoryIcon(
        iconData: Icons.flag_outlined,
      ),
    ),
  ];
}