// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:doctor_app/constants.dart';
import 'package:doctor_app/presentation/banner.dart';
import 'package:doctor_app/presentation/bottom_navigation_bar.dart';
import 'package:doctor_app/presentation/doctors_list.dart';
import 'package:doctor_app/presentation/search_field.dart';
import 'package:doctor_app/size_confige.dart';
import 'appbar.dart';
import 'categories_list.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getRelativeHeight(0.025)),
              const DoctorAppBar(),
              SizedBox(height: getRelativeHeight(0.015)),
              const DoctorBanner(),
              SizedBox(height: getRelativeHeight(0.005)),
              SearchField(),
              SizedBox(height: getRelativeHeight(0.025)),
              const CategoriesList(),
              SizedBox(height: getRelativeHeight(0.01)),
               const DoctorsList()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.place,
        itemIcons: const [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
      ),
    );
  }
}