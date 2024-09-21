import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Classes/publicationClass.dart';
import 'package:provider_learning/porviders/favoriteProvider.dart';

class PostnameScreen extends StatelessWidget {
  const PostnameScreen({super.key, required this.publication});
  final PublicationClass publication;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            publication.title,
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
                child: Text(publication.content,
                    style: const TextStyle(fontSize: 22)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Consumer<Favoriteprovider>(
                      builder: (context, provider, child) {
                    return FloatingActionButton(
                      onPressed: () {
                        provider.favoriteVerification(publication);
                      },
                      backgroundColor: Colors.white,
                      child: publication.isFavorite
                          ? const Icon(Icons.star)
                          : const Icon(Icons.star_outline),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
