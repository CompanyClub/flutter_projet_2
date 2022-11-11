import 'package:flutter/material.dart';

import '../models/inventory.dart';
import 'widgets/inventory_card.dart';

class InventoriesPage extends StatefulWidget {
  const InventoriesPage({super.key, this.title = "Application d'inventaire"});

  final String title;

  @override
  State<InventoriesPage> createState() => _InventoriesPageState();
}

class _InventoriesPageState extends State<InventoriesPage> {
  final List<Inventory> _inventories = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Inventory App",
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Flexible(
              child: ListView.separated(
                itemCount: _inventories.length,
                itemBuilder: (context, index) {
                  final inventory = _inventories[index];

                  return InventoryCard(
                    inventory: inventory,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 12,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.brown,
        shape: const Border(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
