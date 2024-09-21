import 'package:flutter/material.dart';
import 'package:provider_learning/Classes/publicationClass.dart';

class Favoriteprovider extends ChangeNotifier {
  List<PublicationClass> publicationClasssList = [
    PublicationClass(
        title: 'Publication 1 ',
        isFavorite: false,
        content: 'jdlakdjaldjadlakjdlakdjalkdjaldkjadlkjasd'),
    PublicationClass(
        title: 'Publication 2 ',
        isFavorite: false,
        content: 'jdlakdjaldjadlakjdlakdjalkdjaldkjadlkjasd'),
    PublicationClass(
        title: 'Publication 3 ',
        isFavorite: false,
        content: 'jdlakdjaldjadlakjdlakdjalkdjaldkjadlkjasd'),
    PublicationClass(
        title: 'Publication 4 ',
        isFavorite: false,
        content: 'jdlakdjaldjadlakjdlakdjalkdjaldkjadlkjasd'),
  ];

  void favoriteVerification(PublicationClass p) {
    if (p.isFavorite == false) {
      p.isFavorite = true;
      print('hola');
    } else {
      p.isFavorite = false;
    }
    notifyListeners();
  }
}
