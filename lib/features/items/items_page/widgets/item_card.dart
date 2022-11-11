import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/item.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  late String _itemName;
  late int _itemQte;

  @override
  void initState() {
    super.initState();

    _itemName = widget.item.name;
    _itemQte = widget.item.qte;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 8,
                blurRadius: 10,
              )
            ],
            border: Border(
                top: BorderSide(
                    width: 6,
                    color: Colors.primaries[
                        Random().nextInt(Colors.primaries.length)]))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                _itemName,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "Quantité : $_itemQte",
                style: Theme.of(context).textTheme.headline2,
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
