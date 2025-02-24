import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolistapp/common.widgets/category_icon.dart';
import 'package:todolistapp/modules/Category.dart';
import 'package:todolistapp/modules/category_collection.dart';
import 'package:todolistapp/screens/home/footer.dart';
import 'package:todolistapp/screens/home/grid_view_items.dart';
import 'package:todolistapp/screens/home/list_view_items.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryCollection categoryCollection = CategoryCollection();

  String layoutType = 'grid';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: IconButton(
          onPressed: () {},
          icon:const Icon(Icons.menu)
        ),
        actions: [
          IconButton(
            icon: Icon(layoutType == 'grid' ? Icons.edit_note_outlined : Icons.list), // Edit icon
            onPressed: () {
              if(layoutType == 'grid') {
                setState(() {
                  layoutType = 'list';
                });
                // layoutType = 'list';
              } else {
                setState(() {
                  layoutType = 'grid';
                });
                // layoutType = 'grid';
              }
            },
          ),
          // Text(layoutType == 'grid' ? 'Grid' : 'List')
        ],
      ),
      body: Container(
        child: Column(
          children: [  
            Expanded(
              child: layoutType == 'grid' ? GridViewItems(categoryCollection: categoryCollection) : ListViewItems(categoryCollection: categoryCollection),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}