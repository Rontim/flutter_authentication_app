import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
  );

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel('Mo', 'Movies', '12 Movies', null),
    DashboardCategoriesModel('Tv', 'Tv Shows', '10 shows', null),
    DashboardCategoriesModel('Mu', 'Music', '10 songs', null),
    DashboardCategoriesModel('Bo', 'Books', '10 books', null),
    DashboardCategoriesModel('Ga', 'Games', '10 games', null),
    DashboardCategoriesModel('Ap', 'Apps', '10 apps', null),
    DashboardCategoriesModel('Do', 'Documentaries', '8 Documentaries', null)
  ];
}
