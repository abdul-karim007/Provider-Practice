import 'package:flutter/material.dart';
import 'package:prov_pract1/providers/CounterProvider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterProvider>(
                builder: (context, val, child) => Text(val.counter.toString())),
            ElevatedButton(
              onPressed: () => Provider.of<CounterProvider>(context, listen: false)
                  .navigate(context, '/second'),
              child: Text('Go to Second'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () => Provider.of<CounterProvider>(context, listen: false).increment(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => Provider.of<CounterProvider>(context, listen: false).reset(),
            child: const Icon(Icons.refresh_sharp),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => Provider.of<CounterProvider>(context, listen: false).decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
