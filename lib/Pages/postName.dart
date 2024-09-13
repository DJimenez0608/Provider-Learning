import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/porviders/favoriteProvider.dart';

class Postname extends StatefulWidget {
  const Postname({super.key, required this.text, required this.content});
  final String text;
  final String content;

  @override
  State<Postname> createState() => _PostnameState();
}

class _PostnameState extends State<Postname> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 300,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child:
                    Text(widget.content, style: const TextStyle(fontSize: 22)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      context.read<Favoriteprovider>().favoriteChecked();
                    },
                    backgroundColor: Colors.white,
                    child: Icon(context.watch<Favoriteprovider>().icon),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
