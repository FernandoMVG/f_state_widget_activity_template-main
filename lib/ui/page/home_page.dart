import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));

double _value = 0.0;

void _incrementW1() {
  setState(() {
    _value += 0.1;
  });
}

void _decrementW1() {
  setState(() {
    _value -= 0.1;
  });
}

void _incrementW3() {
  setState(() {
    _value += 1.0;
  });
}

void _decrementW3() {
  setState(() {
    _value -= 1.0;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: ()  {
                    setState(() {
                      _value = 0.0;
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(onAdd: _incrementW1, onSub: _decrementW1, value: _value),
                W2(value: _value,),
                W3(onAdd: _incrementW3, onSub: _decrementW3, value: _value)],
            ),
          ),
        ],
      )),
    );
  }
}
