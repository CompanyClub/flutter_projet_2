import 'package:flutter/material.dart';

import '../models/item.dart';
import 'widgets/item_card.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({
    super.key,
    required this.inventoryName,
    required this.items,
  });

  final String inventoryName;
  final List<Item> items;

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  late String _inventoryName;
  final List<Item> _items = [];

  @override
  void initState() {
    super.initState();

    _inventoryName = widget.inventoryName;
    _items.addAll(widget.items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Titre
            Text(_inventoryName, style: Theme.of(context).textTheme.headline1),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RawMaterialButton(
                onPressed: () {},
                fillColor: Colors.brown,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
              RawMaterialButton(
                onPressed: () {},
                fillColor: Colors.red,
                padding: const EdgeInsets.all(15.0),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ]),

            const SizedBox(
              height: 16,
            ),

            // Liste des items
            Flexible(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 300,
                maxCrossAxisExtent: 430,
              ),
              itemCount: _items.length,
              itemBuilder: (context, index) {
                final Item item = _items[index];

                return ItemCard(
                  item: item,
                );
              },
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        shape: const Border(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
