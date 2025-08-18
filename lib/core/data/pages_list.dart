import 'package:daily_planner/ui/views/categories_view.dart';
import 'package:daily_planner/ui/views/home_view.dart';
import 'package:daily_planner/ui/views/profile_view.dart';
import 'package:daily_planner/ui/views/settings_view.dart';
import 'package:flutter/material.dart';

List<Widget> pagesList = const [
  HomeView(),
  CategoriesView(),
  ProfileView(),
  SettingsView(),
];
