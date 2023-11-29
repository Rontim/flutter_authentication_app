import 'package:flutter/material.dart';

class DashboardLatestModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardLatestModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
  );

  static List<DashboardLatestModel> list = [
    DashboardLatestModel('The Killer', 'Thriller/Crime', '2023', null),
    DashboardLatestModel('Spy Ops', 'Documentary', '2023', null),
    DashboardLatestModel('65', 'Sci-Fi/Action', '2023', null),
    DashboardLatestModel('Ballerina', 'Action/Thriller', '2023', null),
  ];
}
