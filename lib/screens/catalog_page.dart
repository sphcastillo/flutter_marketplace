import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Catalog'), actions: [
        IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      ]),
      body: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
          itemCount: 20, //Example product count
          itemBuilder: (context, index) {
            return Card(
                elevation: 2.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 50, color: Colors.grey),
                    Text('Product ${index + 1}'),
                  ],
                ));
          }),
    );
  }
}
