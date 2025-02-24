import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon:const Icon(Icons.add_circle),
            label:const Text("New Remainders")
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.list),
            label:const Text("Add List"))
        ],
      )
    );
  }
}