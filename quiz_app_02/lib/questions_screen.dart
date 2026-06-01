import 'package:flutter/material.dart';

class QuiztionsScreen extends StatefulWidget {
  const QuiztionsScreen({super.key});
  @override
  State<QuiztionsScreen> createState() {
    return _QuiztionsScreenState();
  }
}

class _QuiztionsScreenState extends State<QuiztionsScreen> {
  @override
  Widget build(constant) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The Questions...',style: TextStyle(color:Color.fromARGB(255, 54, 53, 53),),),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Answer 3'),
          ),
        ],
      ),
    );
  }
}
