import 'package:flutter/material.dart';





class NavigatonModel {
  String title;
  IconData icon;

  NavigatonModel({this.title, this.icon});
}

List<NavigatonModel> navigaticonItems = [
  NavigatonModel(title: 'Dashpord', icon: Icons.insert_chart),
  NavigatonModel(title: 'Error', icon: Icons.error),
  NavigatonModel(title: 'Message', icon: Icons.message),
];
