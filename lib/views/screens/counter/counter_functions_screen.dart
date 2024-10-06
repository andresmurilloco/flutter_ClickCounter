import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;
  String mensaje = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {},
          )
        ],
        title: const Center(
          child: Text("Counter Screen"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              mensaje,
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            Icons.plus_one,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            Icons.exposure_minus_1_rounded,
            onPressed: () {
              if (counter == 0) return;
              setState(() {
                counter--;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton(
    this.icon, {
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
