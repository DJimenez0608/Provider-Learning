import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/Classes/publicationClass.dart';
import 'package:provider_learning/Widgets/publicationWidget.dart';
import 'package:provider_learning/main.dart';
import 'package:provider_learning/porviders/favoriteProvider.dart';

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
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            List<PublicationClass> publicationClassList =
                context.read<Favoriteprovider>().publicationClasssList;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  PublicacionWidget(publication: publicationClassList[index]),
            );
          },
          itemCount:
              context.read<Favoriteprovider>().publicationClasssList.length,
        ),
      ),
    );
  }
}
