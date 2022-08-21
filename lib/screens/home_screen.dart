
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    //Dentro del Build es que se pueden declarar variables
    int counter = 10;
    const fontSize30 = TextStyle( fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola mundo"),
        elevation: 6.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            print('Se ha pulsado el boton una vez $counter');
            },
        focusElevation: 20.0,
        child: const Icon( Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

}