import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Counter")
    ),
      body: Center(
        child: Column(
          children: [
            Text("0",style: TextStyle(fontSize: 40),),
            Row(
              children: [
                ElevatedButton(onPressed: (){}, child:const Text("Increment")),
                ElevatedButton(onPressed: (){}, child:const Text("Decrement"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
