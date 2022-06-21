import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_actions/home/bloc/counter_bloc.dart';
import 'package:flutter_github_actions/home/cubit/home_cubit.dart';
import 'package:flutter_github_actions/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static Route route() => MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => CounterBloc(),
          child: const Home(),
        ),
      );

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc auto close'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${context.watch<CounterBloc>().state.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Increment'),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (_) => MyHomePage(title: 'Something')),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().add(Incremented()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
