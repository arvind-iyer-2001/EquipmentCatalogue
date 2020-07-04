import 'package:equipmentCatalogue/Models/equipmentModels.dart';
import '../Models/sample_data.dart';
import 'package:flutter/material.dart';

import 'equipmentGrid.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  static const List<EquipmentItem> equipmentItems = [...equipments];
  List<EquipmentItem> displayedItems = [];
  String currentCategoryId;
  @override
  void initState() {
    displayedItems = [];
    super.initState();
  }

  void update(String value) {
    setState(() {
      if (value == "") {
        displayedItems = [];
      } else {
        displayedItems = [
          ...equipmentItems.where((equipment) =>
              equipment.title.toLowerCase().contains(value.toLowerCase()))
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Dropdown to Choose Category
          Container(
            child: TextField(
              onChanged: update,
            ),
          ),

          // Container with Grid of Items
          Expanded(
            child: EquipmentGrid(displayedItems: displayedItems),
          )
        ],
      ),
    );
  }
}
