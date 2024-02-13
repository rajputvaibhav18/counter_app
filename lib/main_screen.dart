import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counter_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          title: Text(
            'Counter App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<CounterProvider>(builder: (context, value, child) {
                return Text(
                  'Value ${value.countValue.toString()}',
                  style: const TextStyle(
                    fontSize: 80.0,
                    color: Colors.orangeAccent,
                    fontStyle: FontStyle.normal,
                  ),
                );
              }),
              const SizedBox(height: 80.0),
              Consumer<CounterProvider>(builder: (context,value,child){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed: () {
                      value.add();
                    },
                    backgroundColor: Colors.orangeAccent,
                      child: const Icon(Icons.add,
                      color: Colors.black,),

                    ),
                    const SizedBox(width: 60.0),
                    FloatingActionButton(onPressed: () {
                      value.sub();
                    },
                      backgroundColor: Colors.orangeAccent,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
