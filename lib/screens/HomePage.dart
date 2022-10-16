import 'package:flutter/material.dart';
import 'package:prov_pract1/providers/CounterProvider.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${context.watch<CounterProvider>().counter}",
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: () => context.read<CounterProvider>().navigate(context, '/second'), child: Text('Go to Second'))
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () => context.read<CounterProvider>().increment(),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => context.read<CounterProvider>().reset(),
            child: const Icon(Icons.refresh_sharp),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => context.read<CounterProvider>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
