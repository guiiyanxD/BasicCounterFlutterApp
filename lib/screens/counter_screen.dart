
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}): super(key: key);

  @override
  State<CounterScreen> createState(){
    return _CounterScreenState();
  }
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 18;

  void increase() {
    counter++;
    setState(() {});
  }
  void decrease(){
    counter--;
    setState(() {});
  }

  void setZero(){
    counter = 0;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    //Dentro del Build es que se pueden declarar variables
    const fontSize30 = TextStyle( fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola mundo"),
        elevation: 6.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "You have pressed the button:",
              style: fontSize30,
              ),
            Text('$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        setZero: setZero,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  /// This property is used to increase de value of the counter.
  final Function increaseFn;

  /// This property is used to decrease the value of the counter.
  final Function decreaseFn;

  /// This property is used to reset to zero (0) the value of the counter.
  final Function setZero;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.setZero
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: FloatingActionButton(
              onPressed: () => increaseFn(),
              focusElevation: 20.0,
              child: const Icon( Icons.exposure_plus_1_outlined),
            )
        ),

        Padding(
          padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0
          ),
          child: FloatingActionButton(
            onPressed: () => setZero(),
            focusElevation: 20.0,
            child: const Icon( Icons.exposure_zero_outlined),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
          ),
          child: FloatingActionButton(
            onPressed: () => decreaseFn(),
            focusElevation: 20.0,
            child: const Icon( Icons.exposure_minus_1_outlined),
          ),
        ),
      ],
    );
  }

}