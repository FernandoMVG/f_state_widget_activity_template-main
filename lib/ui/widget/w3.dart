import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.onAdd, required this.onSub, required this.value});
  final Function onAdd;
  final Function onSub;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              value.toStringAsFixed(1),
              key: const Key('W3Value'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                    onPressed: () => onAdd(),
                    icon: const Icon(Icons.add),
                    key: const Key('W3Add')),
                IconButton(
                    onPressed: () => onSub(),
                    icon: const Icon(Icons.remove),
                    key: const Key('W3Sub'))
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
