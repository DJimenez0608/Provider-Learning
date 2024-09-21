import 'package:flutter/material.dart';
import 'package:provider_learning/Classes/publicationClass.dart';
import 'package:provider_learning/Pages/postNameScreen.dart';

class PublicacionWidget extends StatelessWidget {
  const PublicacionWidget({super.key, required this.publication});
  final PublicationClass publication;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PostnameScreen(publication: publication),
          ),
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
              publication.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
