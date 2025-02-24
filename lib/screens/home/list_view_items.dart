import 'package:flutter/material.dart';
import 'package:todolistapp/modules/category_collection.dart';

class ListViewItems extends StatefulWidget {
  const ListViewItems({super.key, required this.categoryCollection});

  final CategoryCollection categoryCollection;

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        print("oldIndex $oldIndex");
        print("newIndex $newIndex");
        if(newIndex > oldIndex) {
          newIndex -= 1;
        }

        final item = widget.categoryCollection.categories.removeAt(oldIndex);
        setState(() {
          widget.categoryCollection.categories.insert(newIndex, item);
        });
      },
      children: widget.categoryCollection.categories.map((item) {
        return ListTile(
          key: UniqueKey(),
          title: Row(
            children: [
              item.icon,
              Padding(
                padding: EdgeInsets.only(left: 20), // 20 pixels left margin
                child: Text(item.name),
              ),
            ],
          ), // Assuming 'name' is a property of category
          leading: Icon(Icons.check_circle), // Optional icon
          trailing: Icon(Icons.reorder),
          onTap: () {
            // Handle item tap
            print("Tapped on ${item.name}");
          },
        );
      }).toList(),
    );
  }
}
