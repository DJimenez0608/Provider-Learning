import 'package:flutter/material.dart';
import 'package:provider_learning/Widgets/publicacion.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: const Center(
            child: Text(
          'My List',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.blue,
      ),
      //UI
      body: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            Publicacion(
              text: 'Publication 1',
              content:
                  'Lorem ipsum lorem ipsum ley 1523 de 2012 Lorem ipsum lorem ipsum ley 1523 de 2012 Lorem ipsum lorem ipsum ley 1523 de 2012 Lorem ipsum lorem ipsum ley 1523 de 2012 ',
            ),
          ],
        ),
      ),
    );
  }
}
