
import 'package:flutter/material.dart';

class WeekOneAssignmentAPage extends StatefulWidget {
  const WeekOneAssignmentAPage({super.key, required this.title});
  final String title;

  @override
  State<WeekOneAssignmentAPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WeekOneAssignmentAPage> {

  int _counter1 = 0;
  int _counter2 = 4;

  void _decrementCounter() {
    setState(() {
      _counter1--;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter2 = 2 * _counter1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: _multiplyCounter,
          tooltip: 'multiply',
          child: const Icon(Icons.close),
        ), //
      body:Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                'Subtractions $_counter1',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Multiplications $_counter2',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.minimize_rounded),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}
