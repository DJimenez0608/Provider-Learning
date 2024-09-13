import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Pages/postName.dart';
import 'package:provider_learning/porviders/favoriteProvider.dart';

class Publicacion extends StatelessWidget {
  const Publicacion({super.key, required this.text, required this.content});
  final String text;
  final String content;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Favoriteprovider(),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Postname(
                      text: text,
                      content: content,
                    )),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          height: 80,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                )),
          ),
        ),
      ),
    );
  }
}
